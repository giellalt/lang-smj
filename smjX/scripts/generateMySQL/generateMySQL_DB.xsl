<?xml version="1.0"?>
<!--+
    | 
    | change the 2004-xml-spreadsheet XML files into a simpler xml format
    | Usage: java net.sf.saxon.Transform -it main STYLESHEET_NAME.xsl (inFile=INPUT_FILE_NAME.xml | inDir=INPUT_DIR)
    +-->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:local="nightbar"
		xmlns:fmp="http://www.filemaker.com/fmpxmlresult"
		xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
		exclude-result-prefixes="xs local fmp ss">

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
              omit-xml-declaration="no"
              indent="yes"/>
  <xsl:output method="xml" name="html"
              encoding="UTF-8"
              omit-xml-declaration="yes"
              indent="yes"/>
  <xsl:output method="text" name="txt"
	      encoding="UTF-8"/>
  
  <!-- Input -->
  <xsl:param name="inFileNameONLY" select="'result_SMJDictionarySimpleA'"/>
  <xsl:param name="smjLetter" select="substring($inFileNameONLY,string-length($inFileNameONLY)-1,string-length($inFileNameONLY)-1)"/>
  <xsl:param name="inFile" select="concat($inFileNameONLY,'.xml')"/>
  <xsl:param name="inDir" select="'xxxdirxxx'"/>
  <xsl:param name="XSLfile" select="base-uri(document(''))"/>
  
  <!-- Outputs -->
  <xsl:variable name="outDirXML" select="'outDirXML_Layouts'"/>
  <xsl:variable name="outDirTXT" select="'outDirTXT_Layouts'"/>
  <xsl:variable name="outDirHTML" select="'outDirHTML_Layouts'"/>
  <xsl:variable name="outDirSQL" select="'outDirSQL_Layouts'"/>
  <xsl:variable name="indexFileName" select="concat('MySQL_DB_forImport_',$inFileNameONLY)"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_formatXML" select="'xml'"/>
  <xsl:variable name="output_formatTXT" select="'txt'"/>
  <xsl:variable name="output_formatHTML" select="'html'"/>
  <xsl:variable name="output_formatSQL" select="'txt'"/>
  <xsl:variable name="eXML" select="$output_formatXML"/>
  <xsl:variable name="eTXT" select="$output_formatTXT"/>
  <xsl:variable name="eHTML" select="$output_formatHTML"/>
  <xsl:variable name="eSQL" select="$output_formatSQL"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
  <xsl:variable name="styleSheet_name" select="(tokenize($XSLfile, '/'))[last()]"/>
  <xsl:variable name="tab" select="'&#9;'"/>
  <xsl:variable name="nl" select="'&#xA;'"/>
  <xsl:variable name="debug" select="true()"/>  

  <!-- template to test if input DIR and FILE exist -->
  <xsl:template match="/" name="main">
    
    <xsl:if test="doc-available($inFile)">
      <xsl:message terminate="no">
	    <xsl:value-of select="concat('Processing file: ', $inFile)"/>
      </xsl:message>      
      <xsl:call-template name="processFile">
    	<xsl:with-param name="theFile" select="document($inFile)"/>
    	<xsl:with-param name="theName" select="$file_name"/>
      </xsl:call-template>
    </xsl:if>

    <!-- xsl:if test="doc-available($inDir)" -->
    <xsl:if test="not($inDir = 'xxxdirxxx')">
      <xsl:for-each select="for $f in collection(concat($inDir, '?select=*.xml')) return $f">
	
	<xsl:variable name="current_file" select="substring-before((tokenize(document-uri(.), '/'))[last()], '.xml')"/>
	<xsl:variable name="current_dir" select="substring-before(document-uri(.), $current_file)"/>
	<xsl:variable name="current_location" select="concat($inDir, substring-after($current_dir, $inDir))"/>
	
	<xsl:message terminate="no">
	  <xsl:value-of select="concat('Processing file: ', $current_file)"/>
	</xsl:message>

	<xsl:call-template name="processFile">
	  <xsl:with-param name="theFile" select="."/>
	  <xsl:with-param name="theName" select="$current_file"/>
	</xsl:call-template>
      </xsl:for-each>
    </xsl:if>
    
    <xsl:if test="not(doc-available($inFile) or not($inDir = 'xxxdirxxx'))">
      <xsl:value-of select="concat('Could not find either ', $inFile, ' or ', $inDir, ', or both.', $nl)"/>
    </xsl:if>    
  </xsl:template>

  <!-- template to process file, once its existence has been determined -->
  <xsl:template name="processFile">
    <xsl:param name="theFile"/>
    <xsl:param name="theName"/>
    
   

      <!-- output document MySQL database -->
      <xsl:result-document href="{$indexFileName}.sql" format="{$output_formatSQL}">
      <xsl:variable name="DBname" select="'smjDATA'"/>
      <!--xsl:variable name="TableName" select="concat('table_',$smjLetter)"/-->
      <xsl:variable name="TableName" select="'table_SIMPLE'"/>
      <xsl:variable name="apos">'</xsl:variable>
      <xsl:variable name="dq">"</xsl:variable>
      <xsl:variable name="acute">´</xsl:variable>

<!--+
    | special characters: 
    | double quotes " : &#34;
    | equals sign = : &#61;
    | semi-colon ; : &#59;
    | apostrophe/single quote ' : &#39;
    +-->
<!--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET SQL_MODE&#61;&#34;NO_AUTO_VALUE_ON_ZERO&#34;&#59;
-->
<xsl:value-of select="'SET SQL_MODE=&#34;NO_AUTO_VALUE_ON_ZERO&#34;;'"/>
<xsl:value-of select="concat($nl,$nl)"/>
<!--
CREATE DATABASE `smallG_reImport_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `smallG_reImport_test`;
-->
<!--xsl:value-of select="concat('CREATE DATABASE `',$DBname,'` COLLATE latin1_general_ci; ',$nl,$nl,'USE `',$DBname,'`;')"/-->
<xsl:value-of select="concat('USE `',$DBname,'`;')"/>
<xsl:value-of select="concat($nl,$nl)"/>
<xsl:value-of select="concat('CREATE TABLE `',$TableName,'` (',$nl)"/>
<!-- column (category) names: -->
    <xsl:for-each select="$theFile/outputFile/excelWorksheet/Categories/Category">
      <xsl:value-of select="concat('`',.,'` varchar(300) DEFAULT NULL')"/>
      <xsl:if test="not(position()=last())">
        <xsl:value-of select="','"/>
      </xsl:if>
      <xsl:value-of select="$nl"/>
    </xsl:for-each>
    <xsl:value-of select="'`uniqueSMJ_ID` int(7) DEFAULT NULL'"/>
<xsl:value-of select="concat($nl,') ENGINE=MyISAM DEFAULT CHARSET=utf8;',$nl,$nl)"/>

<!-- enter data -->
    <xsl:for-each select="$theFile/outputFile/excelWorksheet/Row">
      <xsl:value-of select="concat('INSERT INTO `',$TableName,'` VALUES(')"/>
      <xsl:for-each select="Cell">
        <xsl:choose>
        <xsl:when test="not(@originalValue)">
          <xsl:value-of select="concat($dq,.,$dq)"/>
        </xsl:when>
        <xsl:when test="@originalValue">
          <xsl:value-of select="'NULL'"/>
        </xsl:when>
        </xsl:choose>
<!--        <xsl:if test="not(position()=last())"-->
          <xsl:value-of select="', '"/>
<!--        </xsl:if-->
<!--        <xsl:value-of select="concat($dq,../@uniqueSMJno,$dq)"/-->
      </xsl:for-each>
      <xsl:value-of select="concat($dq,@uniqueSMJno,$dq,');',$nl)"/>
    </xsl:for-each>


<!-- example record:
INSERT INTO `table_SIMPLE` VALUES("åbåda", "åb", "åda", "åbåt", "N", "pl nom", "b", NULL, NULL, NULL, NULL, NULL, NULL, "snø (som er dyp, veldig myk og løs - tyngre føre enn gálav)", "snö (som är djup, väldigt mjuk och lös – ger tyngre före än gálav)", "snow (that is deep, very soft and loose)", NULL);
-->

      </xsl:result-document>
      
      <xsl:message terminate="no">
	<xsl:value-of select="concat('***Created index: ',$indexFileName,'.sql')"/>
      </xsl:message>


    
    
  </xsl:template>
  
</xsl:stylesheet>

