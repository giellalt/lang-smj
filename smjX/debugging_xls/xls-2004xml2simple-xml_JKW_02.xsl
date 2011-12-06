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
  <xsl:param name="inFile" select="'debug_lule_klein.xml'"/>
  <xsl:param name="inDir" select="'xxxdirxxx'"/>
  <xsl:param name="XSLfile" select="'xls-2004xml2simple-xml_JKW_02.xsl'"/>
  <!--xsl:variable name="current_file" select="substring-before((tokenize(document-uri(.), '/'))[last()], '.xml')"/-->
  
  <!-- Output -->
  <xsl:variable name="outputDir" select="'000_outDir'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
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
      <xsl:value-of select="concat('Neither ', $inFile, ' nor ', $inDir, ' found.', $nl)"/>
    </xsl:if>    
  </xsl:template>

<!-- template to process file, once it's existance has been determined -->
  <xsl:template name="processFile">
    <xsl:param name="theFile"/>
    <xsl:param name="theName"/>

    <xsl:variable name="output">
        <xsl:message terminate="no">
          <xsl:value-of select="'processing...'"/>
        </xsl:message>
      <xsl:for-each select="$theFile/*:Workbook/*:Worksheet/*:Table/*:Row">
	<xsl:call-template name="processRow">
	  <xsl:with-param name="theRow" select="."/>
	  <xsl:with-param name="thePosition" select="position()"/>
	</xsl:call-template>
      </xsl:for-each>
    </xsl:variable>

    <!-- output document -->
    <xsl:result-document href="{$outputDir}/result_{$theName}.{$e}" format="{$output_format}">
      <output_file>
	<xsl:comment> Conversion from ugly Excel-2004-xml as exported by Excel to something more useable. Created by CipG and JKW for Giellatekno and Mávsulasj. </xsl:comment>
	<xsl:value-of select="$nl"/>
	<meta-info>
	  <inputFile>
	    <xsl:value-of select="$inFile"/>
	  </inputFile>
	  <xslFile>
	    <xsl:value-of select="$XSLfile"/>
	  </xslFile>
	  <exportTimeDate>
	    <xsl:value-of select="current-dateTime()"/>
	  </exportTimeDate>
	</meta-info>
	<excelWorksheet>
	  <xsl:copy-of select="$output"/>
	</excelWorksheet>
      </output_file>
    </xsl:result-document>
    
  </xsl:template>

<!-- template to process input -->  
  <xsl:template name="processRow">
    <xsl:param name="theRow"/>
    <xsl:param name="thePosition"/>
    
    <!--xsl:message terminate="no">
      <xsl:value-of select="concat('Row position ', $thePosition)"/>
    </xsl:message-->
    
    <xsl:variable name="elementName" select="if (position() = 1) then 'category' else 'row'"/>
    <xsl:variable name="isNonemptyRow" select="some $cell in $theRow satisfies not(normalize-space($cell) = '')"/>
    
    <xsl:if test="$isNonemptyRow">
      
      <!--xsl:element name="{$elementName}">
        <xsl:attribute name="cell_count">
    	  <xsl:value-of select="count($theRow//*:Cell)"/>
    	</xsl:attribute>
    	<xsl:attribute name="id">
    	  <xsl:value-of select="$thePosition"/>
    	</xsl:attribute-->	
    	<!--xsl:for-each select="$theRow//*:Cell">
    	  <xsl:message terminate="no">
    	    <xsl:value-of select="concat('Processing column: ', .)"/>
    	  </xsl:message>
        </xsl:for-each-->

    <xsl:call-template name="mutator"/>        
        
    <!--/xsl:element-->
    </xsl:if>
  </xsl:template>


    <xsl:template name="mutator" match="*:Row">
    <xsl:choose>
    <xsl:when test="position()=1">
      <Categories cellCount="{count(node())}">
        <xsl:for-each select="./*:Cell">
          <Category catNo="{position()}">
            <xsl:value-of select="*:Data"/>
          </Category>
        </xsl:for-each>
      <!--xsl:value-of select="$nl"/-->
      </Categories>
    </xsl:when>
    <xsl:when test="not(position()=1)">
    
  <Row rowNo="{position() - 1}" cellCountORIG="{count(node())}" cellCountFINAL="??">
        
    <xsl:for-each-group select="*:Cell" group-starting-with="*:Cell[@ss:Index]">
        <!--Group cellsInGroup="{count(current-group())}"-->
      <xsl:variable name="start" select="(@ss:Index, 1)[1]" as="xs:integer"/>
      <xsl:for-each select="current-group()">
        <xsl:variable name="mergeTotal" select="sum(current-group()[current() >> .]/@ss:MergeAcross)"/>
<!-- Note: 'MergeAcross' doesn't exist in our dataset, but can be in Excel->xml output if cells are merged -->
        <xsl:choose>
          <xsl:when test="*:Data">
            <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
            <Cell catNo="{$realID}" descriptor="{../../*:Row[1]/*:Cell[$realID]}">
              <xsl:value-of select="*:Data"/>
            </Cell>
<!--values><xsl:value-of select="concat('start=',$start,'; position=',position(),'; realID=',$realID)"/></values-->
            <!--xsl:if test="count(node())=po">
              <xsl:
            </xsl:if-->
          </xsl:when>
          <xsl:when test="not(*:Data)">
            <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
        <Cell catNo="{$realID}" descriptor="{../../*:Row[1]/*:Cell[$realID]}" originalValue="empty"/>
<!--values><xsl:value-of select="concat('start=',$start,'; position=',position(),'; realID=',$realID)"/></values-->
          </xsl:when>
        </xsl:choose>


<!-- Problem:
     - adding cells that were missing in original export
     
     Resources:

     - we have the "matrix" of the table, which is the first row with
       ALL cells, their positions, and their meanings

     - we have the output of each (non-empty) cell with the meaning tag on it

     Solution:

     - build two variable: the matrix and the output of the current row
     
     - check the content of the current row against the current of the matrix:

       for-each cell in the matrix do
        take each cell of the current row and
	 if the meaning of the current cell corresponds with the meaning of the cell in the matrix
           then copy the current cell
	 otherwise
           build a new cell with the information of the matrix cell, something along the line...

             cell position="matrix_cell_position" meaning="matrix cell meaning" content="empty"

-->

<!-- Add cells that were missing in original export: --> 
<!-- this is not elegant, could certainly be improved; currently only good for max 4 missing cells -->
        <xsl:if test="following-sibling::*:Cell[1][./@*:Index]">
          <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
          <xsl:variable name="nextIndex" select="following-sibling::*:Cell[1]/@*:Index"/>
          <xsl:variable name="diffRealIDs" select="$nextIndex - $realID - 1"/>
          <!--missingCellCount><xsl:value-of select="$diffRealIDs"/></missingCellCount-->
          <!--xsl:choose-->
          <xsl:if test="$diffRealIDs &gt; 3">
            <xsl:variable name="missingCount" select="$diffRealIDs - 3"/>
              <Cell catNo="{$realID + $missingCount}" descriptor="{../../*:Row[1]/*:Cell[$realID + $missingCount]}" originalValue="missing"/>
          </xsl:if>
          <xsl:if test="$diffRealIDs &gt; 2">
            <xsl:variable name="missingCount" select="$diffRealIDs - 2"/>
              <Cell catNo="{$realID + $missingCount}" descriptor="{../../*:Row[1]/*:Cell[$realID + $missingCount]}" originalValue="missing"/>
          </xsl:if>
          <xsl:if test="$diffRealIDs &gt; 1">
            <xsl:variable name="missingCount" select="$diffRealIDs - 1"/>
              <Cell catNo="{$realID + $missingCount}" descriptor="{../../*:Row[1]/*:Cell[$realID + $missingCount]}" originalValue="missing"/>
          </xsl:if>
          <xsl:if test="$diffRealIDs &gt; 0">
            <xsl:variable name="missingCount" select="$diffRealIDs"/>
              <Cell catNo="{$realID + $missingCount}" descriptor="{../../*:Row[1]/*:Cell[$realID + $missingCount]}" originalValue="missing"/>
<!--values><xsl:value-of select="concat('start=',$start,'; position=',position(),'; realID=',$realID)"/></values-->
          </xsl:if>
          <!--/xsl:choose-->
        </xsl:if>

      </xsl:for-each>
        <!--/Group-->
    </xsl:for-each-group>
  </Row>
      <xsl:value-of select="$nl"/>
    </xsl:when>
    </xsl:choose>
    </xsl:template>        


  
</xsl:stylesheet>

