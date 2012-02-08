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
  <xsl:param name="inFile" select="'result_SMJDictionaryComplexG_modified.xml'"/>
  <xsl:param name="inDir" select="'outDirXML_Layouts'"/>
  <xsl:param name="XSLfile" select="base-uri(document(''))"/>
  
  <!-- Outputs -->
  <xsl:variable name="outDirXML" select="'outDirXML_Layouts'"/>
  <xsl:variable name="outDirTXT" select="'outDirTXT_Layouts'"/>
  <xsl:variable name="outDirHTML" select="'outDirHTML_Layouts'"/>
  <xsl:variable name="indexFileName" select="'Index_SMJentries'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_formatXML" select="'xml'"/>
  <xsl:variable name="output_formatTXT" select="'txt'"/>
  <xsl:variable name="output_formatHTML" select="'html'"/>
  <xsl:variable name="eXML" select="$output_formatXML"/>
  <xsl:variable name="eTXT" select="$output_formatTXT"/>
  <xsl:variable name="eHTML" select="$output_formatHTML"/>
  <!--xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/-->
  <xsl:variable name="styleSheet_name" select="(tokenize($XSLfile, '/'))[last()]"/>
  <xsl:variable name="tab" select="'&#9;'"/>
  <xsl:variable name="nl" select="'&#xA;'"/>
  <xsl:variable name="debug" select="true()"/>  

  <!-- template to test if input DIR and FILE exist -->
  <xsl:template match="/" name="main">
    
    <!-- xsl:if test="doc-available($inDir)" -->
    <xsl:if test="not($inDir = 'xxxdirxxx')">
      
      <xsl:variable name="dataExtracter">
	<xsl:for-each select="for $f in collection(concat($inDir, '?select=*.xml')) return $f">
	  
	  <xsl:variable name="current_file" select="substring-before((tokenize(document-uri(.), '/'))[last()], '.xml')"/>
	  <xsl:variable name="current_dir" select="substring-before(document-uri(.), $current_file)"/>
	  <xsl:variable name="current_location" select="concat($inDir, substring-after($current_dir, $inDir))"/>
      <xsl:variable name="totalCells" select=".//@totalCells"/>
      <xsl:variable name="totalEmptyCells" select=".//@totalEmpty"/>
      <xsl:variable name="totalNonEmpty" select="$totalCells - $totalEmptyCells"/>
	  
	  <xsl:message terminate="no">
	    <xsl:value-of select="concat('Processing file: ', $current_file)"/>
	  </xsl:message>

	  <extractedData>
	    <sourceORIG ORIG_source="{.//sourceORIG}"/>
	    <inputFile nameInput="{.//inputFile}"/>
	    <fileName nameFile="{$current_file}"/>
	    <Entry rowNo="{.//Output/entry/@rowNo}">
	      <SMJ><xsl:value-of select=".//Output/entry/SMJ"/></SMJ>
	      <NOB><xsl:value-of select=".//Output/entry/NOB"/></NOB>
	      <SVE><xsl:value-of select=".//Output/entry/SVE"/></SVE>
	      <ENG><xsl:value-of select=".//Output/entry/ENG"/></ENG>
	      <LAT><xsl:value-of select=".//Output/entry/LAT"/></LAT>
	    </Entry>
	    <xsl:value-of select="$nl"/>
	  </extractedData>

	</xsl:for-each>
      </xsl:variable>

<!--xsl:value-of select="$dataExtracter/extractedData[1]/inputFile/@nameInput"/-->
      
      <!-- output document HTMLindex -->
      <xsl:result-document href="{$indexFileName}.{$eHTML}" format="{$output_formatHTML}">
	<html>
	  <head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	    <link href="style_mavsulasj.css" rel="stylesheet" type="text/css"/>
<!--  <script src="sorttable.js"></script>--><!-- is understood as script for XSL unless input as follows: -->
<xsl:value-of disable-output-escaping="yes">
    &lt;script src="sorttable.js"&gt;&lt;/script&gt;
</xsl:value-of>
	    <title>SAMPLE Index of SMJ entries</title>
	  </head>
	  <body>
	    <h3>INDEX of <span style="color:red;">a random sample of</span> <span style="font-style:italic;">smj</span> entries<br/><em>from Mávsulasj data</em></h3>
	    <p class="smallText"><em>click table headers to sort table by category.</em></p>
	    <table class="sortable" border="1" cellpadding="10" cellspacing="0">
	      <tr><th>no.</th><th>entry <span style="font-style:italic">(smj)</span></th><th width="50px">nob</th><th width="50px">sve</th><th width="50px">eng</th><th>link</th></tr>
	      <xsl:for-each select="$dataExtracter/extractedData/Entry">
        		<xsl:variable name="file_flag">
        		<!-- this needs to be updated to deal with up to 4 digit numbers! -->
        		  <xsl:value-of select="if (./@rowNo &lt; 10) then concat('0', ./@rowNo) else ./@rowNo"/>
        		</xsl:variable>
        		<xsl:variable name="nameFile" select="../fileName/@nameFile"/>
	      <tr>
	     <td><xsl:value-of select="./@rowNo"/></td>
	     <td><xsl:value-of select="./SMJ"/><xsl:if test="./SMJ=''">~</xsl:if></td>
	     <td><xsl:value-of select="./NOB"/><xsl:if test="./NOB=''">~</xsl:if></td>
	     <td><xsl:value-of select="./SVE"/><xsl:if test="./SVE=''">~</xsl:if></td>
	     <td><xsl:value-of select="./ENG"/><xsl:if test="./ENG=''">~</xsl:if></td>
	     <td><a target="_blank" href="{$outDirHTML}/{$nameFile}.{$eHTML}"><xsl:value-of select="$nameFile"/></a></td>
	      </tr>
	      </xsl:for-each>
	    </table>

     <!-- fine print: -->
      <hr style="width: 95%" /><!-- horizontal line with <hr> -->
      <p style="font-size:11px;"><span style="font-style:italic;">extracted from Mávsulasj data</span><br/>
      original data from the file: <span style="color:#FF0000"><xsl:value-of select="$dataExtracter/extractedData[1]/sourceORIG/@ORIG_source"/>
      <xsl:if test="$dataExtracter/extractedData[1]/sourceORIG/@ORIG_source = ''">
        <xsl:value-of select="'?????'"/>
      </xsl:if>
      </span><br/>
      transformation based on file: <span style="color:#FF0000"><xsl:value-of select="$dataExtracter/extractedData[1]/inputFile/@nameInput"/>
      <!--xsl:if test="$dataExtracter/extractedData[1]/inputFile/@nameInput = ''">
        <xsl:value-of select="'?????'"/>
      </xsl:if-->
      </span><br/>
      using xslt-stylesheet: <span style="color:#FF0000"><xsl:value-of select="$styleSheet_name"/></span><br/>
      created: <span style="color:#FF0000"><xsl:value-of select="current-dateTime()"/></span></p>
	  </body>
	</html>
      </xsl:result-document>
      
      <xsl:message terminate="no">
	<xsl:value-of select="concat('***Created index: ',$indexFileName,'.',$eHTML)"/>
      </xsl:message>
      
    </xsl:if>
    
    
    
    <xsl:if test="$inDir = 'xxxdirxxx'">
      <xsl:value-of select="concat('Could not find either ', $inDir, ', or both.', $nl)"/>
    </xsl:if>    
  </xsl:template>

  
</xsl:stylesheet>

