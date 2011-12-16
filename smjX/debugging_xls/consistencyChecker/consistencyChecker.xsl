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
  
  <!-- Input -->
  <!--xsl:param name="inFile" select="'debug_lule_klein.xml'"/-->
  <xsl:param name="inFile" select="'data4consistencyChecker.xml'"/>
  <xsl:param name="inDir" select="'xxxdirxxx'"/>
  <xsl:param name="XSLfile" select="base-uri(document(''))"/>
  
  <!-- Output -->
  <xsl:variable name="outputDir" select="'_000_outDir'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
  <xsl:variable name="styleSheet_name" select="(tokenize($XSLfile, '/'))[last()]"/>
  <xsl:variable name="tab" select="'&#9;'"/>
  <xsl:variable name="nl" select="'&#xA;'"/>
  <xsl:variable name="debug" select="true()"/>  
  <xsl:variable name="outDirFile" select="concat($outputDir,'/result_',$file_name, '_cat', $cellNoDouble, '.',$e)"/>

  <!-- variable to set the category (cell no.) to check for consistency -->
  <xsl:variable name="cellNo" select="5"/>
  <!-- how to make this happen automatically (iteration) for each category? and some categories have too distinct values, need different solution -->
  
  <!-- to create output filename which references the column/category being processed -->
  <xsl:variable name="cellNoDouble">
    <xsl:choose>
      <xsl:when test="string-length(string($cellNo)) = 1">
	<xsl:value-of select="concat('0',$cellNo)"/>
      </xsl:when>
      <xsl:when test="string-length(string($cellNo)) = 2">
	<xsl:value-of select="$cellNo"/>
      </xsl:when>
      <xsl:when test="string-length(string($cellNo)) &gt; 2">
	<xsl:message terminate="yes">
	  <xsl:value-of select="'There are no columns/categories with more than a 2-digit number!'"/>
	</xsl:message>      
      </xsl:when>
    </xsl:choose>
  </xsl:variable>

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
    
    <!-- given very big xls files, the output should not be stored
	 into a whole variable but output right away -->
      <xsl:for-each select="$theFile/outputFile/excelWorksheet/Categories/Category">
	<xsl:message terminate="no">
	  <xsl:value-of select="concat('category ', ., ' label ', ./@catNo, ' ... ')"/>
	</xsl:message>
	<xsl:variable name="current_catNo" select="./@catNo"/>
	<xsl:variable name="output">
	  <consistencyCheck>
	    <xsl:for-each select="../../Row/Cell[./@catNo = $current_catNo]">
	      <cell row="{../Row/position() -1}">
		<xsl:copy-of select="./@*"/>
		<xsl:value-of select="normalize-space(.)"/>
	      </cell>
	    </xsl:for-each>
	  </consistencyCheck>
	</xsl:variable>

	<!-- output document -->
	<xsl:result-document href="{$outDirFile}/{$theFile}_{$current_catNo}" format="{$output_format}">
	  <xsl:comment> Consistency check for Mávsulasj data </xsl:comment>
	  <xsl:value-of select="$nl"/>
	  <outputFile>
	    <xsl:value-of select="$nl"/>
	    <metadata>
	      <inputFile>
		<xsl:value-of select="$inFile"/>
	      </inputFile>
	      <xslFile>
		<xsl:value-of select="$styleSheet_name"/>
	      </xslFile>
	      <exportDateTime>
		<xsl:value-of select="current-dateTime()"/>
	      </exportDateTime>
	    </metadata>
	    <xsl:copy-of select="$output"/>
	  </outputFile>
	</xsl:result-document>
      </xsl:for-each>

      <xsl:message terminate="no">
	<xsl:value-of select="concat('   Done!',$nl,'   Output directory/file:  ',$outDirFile)"/>
      </xsl:message>
    
  </xsl:template>
  
  
  <!-- template to process input -->  
  <xsl:template name="consistency" match="excelWorksheet">
    
    <Category cellNo="{$cellNo}" category="{./Categories/Category[$cellNo]}" patternCount="{count(distinct-values(./Row/Cell[$cellNo]))}">
      <xsl:variable name="distinctTypes" select="distinct-values(./Row/Cell[$cellNo])"/>
      <xsl:for-each select="$distinctTypes">
	
	<!-- how to add calculation of the particular pattern being counted? -->
	<!--Pattern frequency="{count(./Row/Cell[$cellNo]...???)}"-->
	<Pattern frequency="??">
	  <xsl:value-of select="." />
	</Pattern>
      </xsl:for-each>
    </Category>
  </xsl:template>        
  
</xsl:stylesheet>

