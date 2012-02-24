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
  <!--xsl:param name="inFile" select="'data4consistencyCheck.xml'"/-->
  <xsl:param name="inDir" select="'xml_versions'"/>
  <xsl:param name="XSLfile" select="base-uri(document(''))"/>
  
  <!-- Outputs -->
  <xsl:variable name="outDirXML" select="'_000_outDirXML'"/>
  <xsl:variable name="outDirTXT" select="'_000_outDirTXT'"/>
  <xsl:variable name="outDirHTML" select="'_000_outDirHTML'"/>
  <xsl:variable name="indexFileName" select="'categoryComparision'"/>
  
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
	    <xsl:if test="$current_file = 'result_SMJDictionaryComplexG'">
	      <xsl:for-each select="outputFile/excelWorksheet/Categories/Category">
	      <FullCatCount><xsl:value-of select="./@catNo"/></FullCatCount>
	      </xsl:for-each>
	    </xsl:if>
	    <worksheetName><xsl:value-of select="$current_file"/></worksheetName>
      <xsl:for-each select=".//outputFile/excelWorksheet/Categories/Category">
        <catName catNo="{@catNo}"><xsl:value-of select="."/></catName>
      </xsl:for-each>

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
<!--<xsl:value-of disable-output-escaping="yes">
    &lt;script src="sorttable.js"&gt;&lt;/script&gt;
</xsl:value-of>
-->	    <title>Index of categories for EXCEL worksheets</title>
	  </head>
	  <body>
	    <h3>Categories in EXCEL worksheets<br/><em>for Mávsulasj data</em></h3>
	    <p>original data from: <span style="color:#FF0000"><xsl:value-of select="$dataExtracter/extractedData[1]/sourceORIG/@ORIG_source"/></span><br/>transformation based on file: <xsl:value-of select="$dataExtracter/extractedData[1]/inputFile/@nameInput"/><br/>using stylesheet: <xsl:value-of select="$styleSheet_name"/><br/>created: <xsl:value-of select="current-dateTime()"/></p>
	    <table class="sortable" style="width: 70%" border="1" cellpadding="10" cellspacing="0">
<!--	      <tr><th>no.</th><th>col 1</th><th>col 2</th><th>col 3</th><th>col 4</th></tr>
-->	      
<tr><th>file name</th><xsl:for-each select="$dataExtracter/extractedData/FullCatCount"><th><xsl:value-of select="."/></th></xsl:for-each></tr>

<xsl:for-each select="$dataExtracter/extractedData">
		<tr>
<!-- there must be a better way to do this! -->
		<td><xsl:value-of select="worksheetName"/></td>
		<td><xsl:value-of select="catName[@catNo='1']"/></td>
		<td><xsl:value-of select="catName[@catNo='2']"/></td>
		<td><xsl:value-of select="catName[@catNo='3']"/></td>
		<td><xsl:value-of select="catName[@catNo='4']"/></td>
		<td><xsl:value-of select="catName[@catNo='5']"/></td>
		<td><xsl:value-of select="catName[@catNo='6']"/></td>
		<td><xsl:value-of select="catName[@catNo='7']"/></td>
		<td><xsl:value-of select="catName[@catNo='8']"/></td>
		<td><xsl:value-of select="catName[@catNo='9']"/></td>
		<td><xsl:value-of select="catName[@catNo='10']"/></td>
		<td><xsl:value-of select="catName[@catNo='11']"/></td>
		<td><xsl:value-of select="catName[@catNo='12']"/></td>
		<td><xsl:value-of select="catName[@catNo='13']"/></td>
		<td><xsl:value-of select="catName[@catNo='14']"/></td>
		<td><xsl:value-of select="catName[@catNo='15']"/></td>
		<td><xsl:value-of select="catName[@catNo='16']"/></td>
		<td><xsl:value-of select="catName[@catNo='17']"/></td>
		<td><xsl:value-of select="catName[@catNo='18']"/></td>
		<td><xsl:value-of select="catName[@catNo='19']"/></td>
		<td><xsl:value-of select="catName[@catNo='20']"/></td>
		<td><xsl:value-of select="catName[@catNo='21']"/></td>
		<td><xsl:value-of select="catName[@catNo='22']"/></td>
		<td><xsl:value-of select="catName[@catNo='23']"/></td>
		<td><xsl:value-of select="catName[@catNo='24']"/></td>
		<td><xsl:value-of select="catName[@catNo='25']"/></td>
		<td><xsl:value-of select="catName[@catNo='26']"/></td>
		<td><xsl:value-of select="catName[@catNo='27']"/></td>
		<td><xsl:value-of select="catName[@catNo='28']"/></td>
		<td><xsl:value-of select="catName[@catNo='29']"/></td>
		<td><xsl:value-of select="catName[@catNo='30']"/></td>
		</tr>
</xsl:for-each>
	    </table>
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

