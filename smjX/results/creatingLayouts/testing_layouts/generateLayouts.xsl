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
  <xsl:param name="inFile" select="'result_SMJDictionaryComplexG_SMALLSAMPLE.xml'"/>
  <xsl:param name="inDir" select="'xxxdirxxx'"/>
  <xsl:param name="XSLfile" select="base-uri(document(''))"/>
  
  <!-- Outputs -->
  <xsl:variable name="outDirXML" select="'_000_outDirXML'"/>
  <xsl:variable name="outDirTXT" select="'_000_outDirTXT'"/>
  <xsl:variable name="outDirHTML" select="'_000_outDirHTML'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_formatXML" select="'xml'"/>
  <xsl:variable name="output_formatTXT" select="'txt'"/>
  <xsl:variable name="output_formatHTML" select="'html'"/>
  <xsl:variable name="eXML" select="$output_formatXML"/>
  <xsl:variable name="eTXT" select="$output_formatTXT"/>
  <xsl:variable name="eHTML" select="$output_formatHTML"/>
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
    
    <!-- given very big xls files, the output should not be stored
	 into a whole variable but output right away -->
    <xsl:for-each select="$theFile/outputFile/excelWorksheet/Row">
      <xsl:message terminate="no">
	<xsl:value-of select="concat('processing Row ', @rowNo, ' for the word ', ./Cell[1])"/>
      </xsl:message>
      <xsl:variable name="rowNo" select="./@rowNo"/>
      <xsl:variable name="file_flag">
	<xsl:value-of select="if (./@rowNo &lt; 10) then concat('0', ./@rowNo) else ./@rowNo"/>
      </xsl:variable>

      
      <!-- output document XML -->
      <xsl:result-document href="{$outDirXML}/{$theName}_{$file_flag}.{$eXML}" format="{$output_formatXML}">
	<xsl:comment> Output entries for Mávsulasj data </xsl:comment>
	<xsl:value-of select="$nl"/>
	<outputFile>
	  <xsl:value-of select="$nl"/>
	  <metadata>
	    <sourceORIG><xsl:value-of select="../../../metadata/inputFile"/></sourceORIG>
	    <inputFile><xsl:value-of select="$inFile"/></inputFile>
	    <xslFile><xsl:value-of select="$styleSheet_name"/></xslFile>
	    <exportDateTime><xsl:value-of select="current-dateTime()"/></exportDateTime>
	  </metadata>
	  <Output>
	    <xsl:value-of select="just testing!"/>
	  </Output>
	</outputFile>
      </xsl:result-document>      

      <!-- output document TXT -->
<!--      <xsl:result-document href="{$outDirTXT}/{$theName}_{$file_flag}.{$eTXT}" format="{$output_formatTXT}">
	<xsl:value-of select="concat('CONSISTENCY OF MÁVSULASJ DATA',$nl)"/>
	<xsl:value-of select="concat('based on file: ',$inFile,$nl)"/>
	<xsl:value-of select="concat('using stylesheet: ',$styleSheet_name,$nl)"/>
	<xsl:value-of select="concat('created: ',current-dateTime(),$nl,$nl)"/>
	  <xsl:copy-of select="$output/outputTXT"/>
      </xsl:result-document>
-->
      <!-- output document HTML -->
      <xsl:result-document href="{$outDirHTML}/{$theName}_{$file_flag}.{$eHTML}" format="{$output_formatHTML}">
      <html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link href="../../../consistency/style_mavsulasj.css" rel="stylesheet" type="text/css"/>
<!--  <script src="../../../consistency/sorttable.js"></script>--><!-- is understood as script for XSL unless input as follows: -->
<xsl:value-of disable-output-escaping="yes">
    &lt;script src="../../../consistency/sorttable.js"&gt;
    &lt;/script&gt;
</xsl:value-of>
  <title><xsl:value-of select="concat(./Cell[@cat='smj'],' (',$file_flag,')')"/></title>
</head>
      <body>
      <h3>Test presentation for <span style="color:#FF0000"><xsl:value-of select="./Cell[@cat='smj']"/></span></h3>
      <!--xsl:copy-of select="$output/outputHTML/*"/-->
     <p style="color:black;font-size:26px"><xsl:value-of select="./Cell[@cat='smj']"/></p>
     <p style="color:black;"><span style="font-style:italic;">translations:</span><br/>
     <xsl:if test="not(./Cell[@cat='nob1']='')">Norwegian: <span style="color:blue;"><xsl:value-of select="./Cell[@cat='nob1']"/></span><br/></xsl:if>
     <xsl:if test="not(./Cell[@cat='sve1']='')">Swedish: <span style="color:blue;"><xsl:value-of select="./Cell[@cat='sve1']"/></span><br/></xsl:if>
     <xsl:if test="not(./Cell[@cat='eng1']='')">English: <span style="color:blue;"><xsl:value-of select="./Cell[@cat='eng1']"/></span><br/></xsl:if>
     <xsl:if test="not(./Cell[@cat='lat1']='')">Latin: <span style="color:blue;"><xsl:value-of select="./Cell[@cat='lat1']"/></span><br/></xsl:if>
     </p>

     <p style="color:black;"><span style="font-style:italic;">grammatical details:</span><br/>
     <xsl:for-each select="./Cell[@catNo]">
       <xsl:variable name="Now" select="@cat"/>
     <xsl:if test="not(.[@cat=$Now]='')"><xsl:value-of select="$Now"/>: <span style="color:blue;"><xsl:value-of select=".[@cat=$Now]"/></span><br/></xsl:if>
     </xsl:for-each>
     </p>


     <!-- fine print: -->
      <hr style="width: 95%" /><!-- horizontal line with <hr> -->
      <p style="font-size:11px;"><span style="font-style:italic;">extracted from Mávsulasj data</span><br/>
      original data from the file: <span style="color:#FF0000"><xsl:value-of select="../../metadata/inputFile"/></span><br/>
      transformation based on file: <span style="color:#FF0000"><xsl:value-of select="$inFile"/></span><br/>
      using xslt-stylesheet: <span style="color:#FF0000"><xsl:value-of select="$styleSheet_name"/></span><br/>
      created: <span style="color:#FF0000"><xsl:value-of select="current-dateTime()"/></span></p>
      </body>
      </html>
      </xsl:result-document>


      
      <xsl:message terminate="no">
	<xsl:value-of select="concat('   Done!',' Output file  ',$theName, '_', $file_flag, '  for XML and HTML in: ', $outDirXML,' and ',$outDirHTML)"/>
	<!--xsl:value-of select="concat('   Done!',' Output directory/file for XML and HTML in:  ', $outDirXML, '/', $theName, '_', $file_flag, '.', $eXML, ', ',$outDirTXT, '/', $theName, '_', $file_flag, '.', $eTXT, ' AND ',$outDirHTML, '/', $theName, '_', $file_flag, '.', $eHTML)"/-->
      </xsl:message>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>

