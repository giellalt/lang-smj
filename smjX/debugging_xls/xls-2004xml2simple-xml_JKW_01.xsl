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
        xmlns:f="http://www.functx.com"		
        exclude-result-prefixes="xs local fmp ss f">

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>
  
  <!-- new line -->
  <xsl:variable name="nl" select="'&#xa;'"/>
  <!-- tab -->
  <xsl:variable name="tab" select="'&#9;'"/>

  <!-- Data element variable -->
  <xsl:variable name="emptyData">
    <xsl:element name="data">
      <xsl:value-of select="''"/>
    </xsl:element>
  </xsl:variable>


<!--xsl:variable name="outPut"-->
  <xsl:template match="*:Workbook">
    <xsl:value-of select="$nl"/>
    <xsl:element name="workbook">
    <xsl:value-of select="$nl"/>
      <xsl:apply-templates select="./*/*/*:Row"/>
    </xsl:element>
    <xsl:value-of select="$nl"/>
  </xsl:template>
  
   
    <xsl:template match="*:Row">
      <!--xsl:element name="entry"-->

  <Row nr="{position()}" cells="{count(node())}">
    <xsl:for-each-group select="*:Cell" group-starting-with="*:Cell[@ss:Index]">
      <xsl:variable name="start" select="(@ss:Index, 1)[1]" as="xs:integer"/>
      <xsl:for-each select="current-group()">
        <xsl:variable name="mergeTotal" select="sum(current-group()[current() >> .]/@ss:MergeAcross)"/>
<!-- Note: 'MergeAcross' doesn't exist in our dataset, but can be in Excel->xml output if cells are merged -->
        <xsl:choose>
          <xsl:when test="*:Data">
            <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
            <!--Cell col="$realID" descriptor="{../../*:Row[1]/*:Cell[{$start + $mergeTotal + position() - 1}]}"-->
            <!--Cell col="{$start + $mergeTotal + position() - 1}"-->
            <Cell col="{$realID}" descriptor="{../../*:Row[1]/*:Cell[$realID]}">
              <xsl:value-of select="*:Data"/>
            </Cell>
          </xsl:when>
          <xsl:when test="not(*:Data)">
            <xsl:variable name="realID" select="$start + $mergeTotal + position() - 1"/>
            <Cell col="{$start + $mergeTotal + position() - 1}" descriptor="{../../*:Row[1]/*:Cell[$realID]}" empty="yes"/>
          </xsl:when>
        </xsl:choose>
        <!--xsl:value-of select="concat($nl, 'start: ', $start, '; mergeTotal: ', $mergeTotal, '; position: ', position(), '; total count: ', $start + $mergeTotal + position() - 1, $nl, $tab, $tab)"/-->
      </xsl:for-each>
    </xsl:for-each-group>
  </Row>

        <!--/xsl:element-->
      <xsl:value-of select="$nl"/>
    </xsl:template>

<!-- Radiergummi fuer text von allen anderen Knoten als METADATA/RESULTSET (those specified otherwise); ie: phantom killer -->
  <xsl:template match="node()|@*">
    <xsl:apply-templates/>
  </xsl:template>  

  
  <!-- Patterns for the feature values -->
  <xsl:variable name="of" select="'xml'"/><!-- of=output format-->
  <xsl:variable name="e" select="$of"/>


  <xsl:template match="/">
    <!--xsl:apply-templates/--><!-- for Terminal output -->
    <xsl:result-document href="debug_lule_klein_JKW_OUTPUT_01.{$e}" format="{$of}">
      <xsl:apply-templates/>
    </xsl:result-document>
  </xsl:template>

  
</xsl:stylesheet>

