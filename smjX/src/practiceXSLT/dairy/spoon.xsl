<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="nightbar"
    exclude-result-prefixes="xs local">

<!-- output method not used for the direct output -->
  <xsl:output method="xml" name="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

<!-- output method without name: used for the direct output -->
  <xsl:output method="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  <xsl:strip-space elements="*"/>

<!-- output method not used for the direct output -->
  <xsl:output method="text" name="txt"
	      encoding="UTF-8"/>
  
<!-- TOOLBOX DICTIONARY POSITION NAME VARIABLES -->
<xsl:variable name="lx" select="'TB lx no INF suffix'"/>
<xsl:variable name="grad" select="'TB grad summary'"/>
<xsl:variable name="u1" select="'TB u1 no suffix'"/>
<xsl:variable name="a" select="'TB a stem extension alt no dash'"/>
<xsl:variable name="u2" select="'TB u2 no suffix'"/>
<xsl:variable name="ps" select="'TB ps conversion to English'"/>
<xsl:variable name="ge" select="'English translation'"/>
<xsl:variable name="gs" select="'Swedish translation'"/>
<xsl:variable name="FMnoJW" select="'record number JW'"/>
  
  
  <!-- new line -->
  <xsl:variable name="nl" select="'&#xa;'"/>

  <xsl:template match="*:FMPXMLRESULT">
    <xsl:element name="FMPXMLRESULT">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="*:FMPXMLRESULT/*:METADATA">
    <xsl:element name="METADATA">
      <xsl:for-each select="*:FIELD">
        <xsl:copy>
          <xsl:copy-of select="@NAME,@TYPE"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:element>
    <xsl:value-of select="$nl"/>
  </xsl:template>
  
  
  <xsl:template match="*:RESULTSET/*:ROW">
    <xsl:element name="entry">
      <xsl:attribute name="FMrecordID">
        <xsl:value-of select="./@RECORDID"/>
      </xsl:attribute>
      <xsl:apply-templates select="*:COL">
        <xsl:sort select="./@TB_sortOrder" data-type="number"/>
      </xsl:apply-templates>
    </xsl:element>
  </xsl:template>
  
  
  <xsl:template match="*:RESULTSET/*:ROW/*:COL">
    <xsl:element name="data" >
      <xsl:attribute name="descriptor">
        <xsl:variable name="poser" select="position()"/>
        <xsl:value-of select="../../../*:METADATA/*[position()=$poser]/@NAME"/>
      </xsl:attribute>
      <xsl:attribute name="type">
        <xsl:variable name="poser" select="position()"/>
        <xsl:value-of select="fn:lower-case(../../../*:METADATA/*[position()=$poser]/@TYPE)"/>
      </xsl:attribute>
      <xsl:attribute name="TB_sortOrder">
        <xsl:variable name="poser" select="position()"/>
        <xsl:choose>
          <!-- for TB \lx tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$lx">
            <xsl:value-of select="1"/>
          </xsl:when>
          <!-- for TB \grad tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$grad">
            <xsl:value-of select="2"/>
          </xsl:when>
          <!-- for first TB \u tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$u1">
            <xsl:value-of select="3"/>
          </xsl:when>
          <!-- for TB \a tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$a">
            <xsl:value-of select="4"/>
          </xsl:when>
          <!-- for second TB \u tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$u2">
            <xsl:value-of select="5"/>
          </xsl:when>
          <!-- for TB \ps tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$ps">
            <xsl:value-of select="6"/>
          </xsl:when>
          <!-- for TB \ge tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$ge">
            <xsl:value-of select="7"/>
          </xsl:when>
          <!-- for TB \gs tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$gs">
            <xsl:value-of select="8"/>
          </xsl:when>
          <!-- for TB \FMnoJW tier -->
          <xsl:when test="../../../*:METADATA/*[position()=$poser]/@NAME=$FMnoJW">
            <xsl:value-of select="9"/>
          </xsl:when>
        </xsl:choose>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>


<!-- Radiergummi fuer text von allen anderen Knoten als METADATA/RESULTSET (those specified otherwise); ie: phantom killer -->
  <xsl:template match="node()|@*">
    <xsl:apply-templates/>
  </xsl:template>  
<!--/xsl:variable-->

  <!-- Patterns for the feature values -->
  <xsl:variable name="ofx" select="'xml'"/><!-- of=output format-->
  <xsl:variable name="ex" select="$ofx"/>
  <xsl:variable name="oft" select="'txt'"/><!-- of=output format-->
  <xsl:variable name="et" select="$oft"/>


  <xsl:template match="/">
    <xsl:apply-templates/><!-- this shows up in terminal -->
    <xsl:result-document href="chocolateMilk_Sorted.{$ex}" format="{$ofx}">
      <!--xsl:copy-of select="."/--><!-- NO! this just copies everything as is from "/"! -->
      <xsl:apply-templates/>
    </xsl:result-document>
    <!--xsl:result-document href="thievesLtd.{$et}" format="{$oft}">
      <xsl:apply-templates/>
    </xsl:result-document-->
  </xsl:template>


</xsl:stylesheet>
