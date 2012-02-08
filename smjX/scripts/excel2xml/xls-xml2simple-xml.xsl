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
  <xsl:param name="inFile" select="'SMJDictionarySimpleB.xml'"/>
  <xsl:param name="AlphabetFile" select="'smjALPHABETnumbered.xml'"/>
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
  <xsl:variable name="outDirFile" select="concat($outputDir,'/result_',$file_name,'.',$e)"/>

<!-- template to test if input DIR and FILE exist -->
  <xsl:template match="/" name="main">

    <xsl:if test="doc-available($AlphabetFile)">
      <xsl:message terminate="no">
	    <xsl:value-of select="concat($AlphabetFile,' file found successfully')"/>
      </xsl:message>      
    </xsl:if>
    <xsl:if test="not(doc-available($AlphabetFile))">
      <xsl:message terminate="yes">
	    <xsl:value-of select="concat($AlphabetFile,' file NOT FOUND!')"/>
      </xsl:message>      
    </xsl:if>
    
    <xsl:if test="doc-available($inFile)">
      <xsl:message terminate="no">
	    <xsl:value-of select="concat('Processing file: ', $inFile)"/>
      </xsl:message>      
      <xsl:call-template name="processFile">
    	<xsl:with-param name="theFile" select="document($inFile)"/>
    	<xsl:with-param name="theAlphabetFile" select="document($AlphabetFile)"/>
    	<xsl:with-param name="theName" select="$file_name"/>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="not(doc-available($inFile) or not($inDir = 'xxxdirxxx'))">
      <xsl:value-of select="concat('Neither ', $inFile, ' nor ', $inDir, ' found.', $nl)"/>
    </xsl:if>    
  </xsl:template>

  <!-- template to process file, once its existence has been determined -->
  <xsl:template name="processFile">
    <xsl:param name="theFile"/>
    <xsl:param name="theName"/>
    <xsl:param name="theAlphabetFile"/>

    
    <!-- build a global variable to pack the number, position and
         meaning of the labels, i.e. the first row in the xsl-file so
         that you can match each row against this -->
    <xsl:variable name="labels">
      <Categories cellCount="{$theFile/*:Workbook/*:Worksheet/*:Table/*:Row[01]/count(node())}">
	<xsl:for-each select="$theFile/*:Workbook/*:Worksheet/*:Table/*:Row[01]/*:Cell">
	  <Category catNo="{position()}">
	    <xsl:value-of select="*:Data"/>
	  </Category>
	</xsl:for-each>
      </Categories>
    </xsl:variable>

    <!-- build a global variable to pack the reference first letters to numbers -->
    <xsl:variable name="LetterNos">
	<xsl:for-each select="$theAlphabetFile/document/smjAlphabet">
	    <xsl:copy-of select="./letter"/>
	</xsl:for-each>
    </xsl:variable>
    
    <!-- given very big xls files, the output should not be stored
         into a whole variable but output right away -->
    <xsl:variable name="output">          
      <xsl:for-each select="$theFile/*:Workbook/*:Worksheet/*:Table/*:Row">
	<xsl:message terminate="no">
	  <xsl:value-of select="concat('row ', position(), ' ... ')"/>
	</xsl:message>
	<xsl:call-template name="processRow">
	  <xsl:with-param name="theRow" select="."/>
	  <xsl:with-param name="thePosition" select="position()"/>
	  <xsl:with-param name="theLabels" select="$labels"/>
	  <xsl:with-param name="theLetterNos" select="$LetterNos"/>
	</xsl:call-template>
      </xsl:for-each>
      <xsl:message terminate="no">
	<xsl:value-of select="concat('   Done!',$nl,'   Output directory/file:  ',$outDirFile)"/>
      </xsl:message>
    </xsl:variable>
    
    <!-- output document -->
    <xsl:result-document href="{$outDirFile}" format="{$output_format}">
	<xsl:comment> Conversion from Excel-2004-xml as exported by Excel to a more useable xml structure. Created by CipG and JKW for Giellatekno and Mávsulasj. </xsl:comment>
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
	  <note>The attribute 'uniqueSMJno' consists of the 2-digit letter-code plus the full 5-digit row number (ex.: basse = 0202046 : 02 for letter 'b', 02046 for row '2046')</note>
	</metadata>
	<excelWorksheet>
	  <xsl:copy-of select="$output"/>
	</excelWorksheet>
      </outputFile>
    </xsl:result-document>
    
  </xsl:template>

<!-- template to process input -->  
  <xsl:template name="processRow" match="*:Row">
    <xsl:param name="theRow"/>
    <xsl:param name="thePosition"/>
    <xsl:param name="theLabels"/>
    <xsl:param name="theLetterNos"/>
    <xsl:variable name="isNonemptyRow" select="some $cell in $theRow satisfies not(normalize-space($cell) = '')"/>
    <xsl:if test="$isNonemptyRow">
	<!--xsl:call-template name="mutator">
	  <xsl:with-param name="mutator_labels" select="$theLabels"/>
	</xsl:call-template>
    </xsl:if>
  </xsl:template-->

  
  <!--xsl:template name="mutator" match="*:Row">
    <xsl:param name="mutator_labels"/-->
    
    <xsl:choose>
      <xsl:when test="position()=1">
	<Categories cellCount="{count(node())}">
        <xsl:for-each select="./*:Cell">
	  <Category catNo="{position()}">
	    <xsl:value-of select="*:Data"/>
	  </Category>
	</xsl:for-each>
	</Categories>
      </xsl:when>
      <xsl:when test="not(position()=1)">
	
	<xsl:variable name="current_row">
<!--	  <Row rowNo="{position() - 1}" originalCellCount="{count(node())}">-->
	  <Row>	    
	    <xsl:for-each-group select="*:Cell" group-starting-with="*:Cell[@ss:Index]">
	      <xsl:variable name="start" select="(@ss:Index, 1)[1]" as="xs:integer"/>
	      <xsl:for-each select="current-group()">
		<xsl:variable name="mergeTotal" select="sum(current-group()[current() >> .]/@ss:MergeAcross)"/>
		<!-- Note: 'MergeAcross' doesn't exist in our dataset, but can be in Excel->xml output if cells are merged -->
		<xsl:choose>
		  <xsl:when test="*:Data">
		    <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
		    <Cell catNo="{$realID}" cat="{../../*:Row[1]/*:Cell[$realID]}">
		      <xsl:value-of select="*:Data"/>
		    </Cell>
		  </xsl:when>
		  <xsl:when test="not(*:Data)">
		    <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
		    <Cell catNo="{$realID}" cat="{../../*:Row[1]/*:Cell[$realID]}" originalValue="empty"/>
		  </xsl:when>
		</xsl:choose>
	    </xsl:for-each>
	    </xsl:for-each-group>
	  </Row>
	</xsl:variable>

	<xsl:variable name="sortLetter">
	  <xsl:value-of select="lower-case(substring($current_row/Row/Cell[1],1,1))"/>
	</xsl:variable>
	
	<xsl:variable name="letterNo">
	  <xsl:value-of select="$theLetterNos/letter[.=$sortLetter]/@no"/>
	</xsl:variable>

	<xsl:variable name="rowNoFull">
	   <xsl:variable name="posRow" select="position()-1"/>
	  <xsl:value-of select="if ($posRow &lt; 10) then concat('0000', $posRow) else if ($posRow &lt; 100) then concat('000', $posRow) else if ($posRow &lt; 1000) then concat('00', $posRow) else if ($posRow &lt; 10000) then concat('0', $posRow) else $posRow"/>
	</xsl:variable>
	
	<xsl:variable name="uniqueSMJno">
	  <xsl:value-of select="concat($letterNo,$rowNoFull)"/>
	</xsl:variable>

	<Row rowNo="{position() - 1}" originalCellCount="{count(node())}" letter="{$sortLetter}" uniqueSMJno="{$uniqueSMJno}">
	  <xsl:for-each select="$theLabels/Categories/Category">

	    <xsl:variable name="cd" select="."/>
	    <!-- if there is a cell with the current category copy it here -->
	    <xsl:if test=". = $current_row/Row/Cell/@cat">
	      <xsl:copy-of select="$current_row/Row/Cell[./@cat = $cd]"/>
	    </xsl:if>
	    <!-- if there is no such cell build a dummy one -->
	    <xsl:if test="not($current_row/Row/Cell[./@cat = $cd])">
	      <Cell catNo="{./@catNo}" cat="{.}" originalValue="missing"/>
	    </xsl:if>
	  </xsl:for-each>
	</Row>
	
      </xsl:when>
    </xsl:choose>

    </xsl:if>
  </xsl:template>        
  
</xsl:stylesheet>

