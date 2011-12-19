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
  <xsl:param name="inFile" select="'result_SMJDictionaryComplexG.xml'"/>
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
    <xsl:for-each select="$theFile/outputFile/excelWorksheet/Categories/Category">
      <xsl:message terminate="no">
	<xsl:value-of select="concat('category ', ./@catNo, ': ', ., ' ... ')"/>
      </xsl:message>
      <xsl:variable name="current_cat" select="."/>
      <xsl:variable name="current_catNo" select="./@catNo"/>
      <xsl:variable name="file_flag">
	<xsl:value-of select="if (./@catNo &lt; 10) then concat('0', ./@catNo) else ./@catNo"/>
      </xsl:variable>
      
      <xsl:variable name="output">

	  <xsl:variable name="cellGr">
	    <cellGroup>
	      <xsl:for-each select="../../Row/Cell[./@catNo = $current_catNo]">
		<cell row="{../Row/position() -1}">
		  <xsl:copy-of select="./@*"/>
		  <xsl:value-of select="normalize-space(.)"/>
		</cell>
	      </xsl:for-each>
	    </cellGroup>
	  </xsl:variable>
	  
	  <xsl:variable name="frequencyCells">
	  <xsl:for-each-group select="$cellGr/cellGroup/cell" group-by=".">
	    <patternCount>
	      <xsl:value-of select="count(.)"/>
	    </patternCount>
	    <pattern frequency="{count(current-group())}">
	      <xsl:value-of select="current-grouping-key()"/>
	    </pattern>
	  </xsl:for-each-group>
	  </xsl:variable>

	  <xsl:variable name="patternCount">
	  <xsl:for-each select="$frequencyCells">
	    <xsl:value-of select="count(./pattern)"/>
	  </xsl:for-each>
	  </xsl:variable>

      <outputXML>
      <consistencyCheck catNo="{$current_catNo}" cat="{$current_cat}" patternCount="{$patternCount}">
        <xsl:for-each select="$frequencyCells/pattern">
          <xsl:sort data-type="number" order="descending" select="./@frequency"/>
          <xsl:copy-of select="."/>
        </xsl:for-each>    	  
      </consistencyCheck>
      </outputXML>
 
<!--     <outputTXT>
     <xsl:value-of select="concat('Column ',$file_flag,' ')"/>
     <xsl:value-of select="concat('&#34;',$current_cat,'&#34;',$nl)"/>
     <xsl:value-of select="concat('total number of patterns: ',$patternCount,$nl)"/>
     <xsl:value-of select="concat('',$nl)"/>
     <xsl:value-of select="concat('frequencies - patterns:',$nl)"/>
     <xsl:for-each select="$frequencyCells/pattern">
       <xsl:sort data-type="number" order="descending" select="./@frequency"/>
       <xsl:choose>
         <xsl:when test=".=''">
           <xsl:copy-of select="concat(./@frequency,$tab,' - &#40;EMPTY&#41;',$nl)"/>
         </xsl:when>
         <xsl:when test="not(.='')">
           <xsl:copy-of select="concat(./@frequency,$tab,' - ', .,$nl)"/>
         </xsl:when>
       </xsl:choose>
     </xsl:for-each>
     </outputTXT>
-->
     <outputHTML>
     <p>total number of patterns: <font class="header4"><xsl:value-of select="$patternCount"/></font><br/>
     in the category <font class="header4"><em><xsl:value-of select="$current_cat"/></em></font></p>
     <table border="1" cellpadding="10" cellspacing="0">
      <xsl:for-each select="$frequencyCells">
        <tr>
          <th>frequency</th>
          <th>pattern</th>
        </tr>
      </xsl:for-each>
        <xsl:for-each select="$frequencyCells/pattern">
        <xsl:sort data-type="number" order="descending" select="./@frequency"/>
        <tr>
          <td align="center">
        <xsl:value-of select="./@frequency"/>
          </td>
          <td>
        <xsl:choose>
          <xsl:when test=".=''">
        <em><xsl:value-of select="'*empty*'"/></em>
          </xsl:when>
          <xsl:when test=".">
        <xsl:value-of select="."/>
          </xsl:when>
        </xsl:choose>
          </td>
        </tr>
      </xsl:for-each>
     </table>
     </outputHTML>
          
      </xsl:variable>
      

      <!-- output document XML -->
      <xsl:result-document href="{$outDirXML}/{$theName}_{$file_flag}.{$eXML}" format="{$output_formatXML}">
	<xsl:comment> Consistency check for Mávsulasj data </xsl:comment>
	<xsl:value-of select="$nl"/>
	<outputFile>
	  <xsl:value-of select="$nl"/>
	  <metadata>
	    <sourceORIG>
	      <xsl:value-of select="../../../metadata/inputFile"/>
	    </sourceORIG>
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
	  <xsl:copy-of select="$output/outputXML"/>
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
  <link href="../style_mavsulasj.css" rel="stylesheet" type="text/css"/>
  <title><xsl:value-of select="concat($current_cat,' (',$file_flag,')')"/></title>
</head>
      <body>
      <h3>Consistency Check for <font style="color:#FF0000"><xsl:value-of select="$current_cat"/></font><br/><em>for Mávsulasj data</em></h3><p>original data from: <font style="color:#FF0000"><xsl:value-of select="../../../metadata/inputFile"/></font><br/>transformation based on file: <xsl:value-of select="$inFile"/><br/>using stylesheet: <xsl:value-of select="$styleSheet_name"/><br/>created: <xsl:value-of select="current-dateTime()"/></p>
      <xsl:copy-of select="$output/outputHTML/*"/>
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

