<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="nightbar"
    exclude-result-prefixes="xs local">
<!--
    | this stylesheet is intended to transform Filemaker XML-export
    | sample 'milk.xml' into a txt structure for use with Toolbux
    -->


<!-- output method not used for the direct output -->
  <xsl:output method="xml" name="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  <xsl:output method="text" name="text"
	      encoding="UTF-8"
	      omit-xml-declaration="yes"
	      indent="yes"/>


<!-- output method without name: used for the direct output into Shell -->
  <xsl:output method="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="yes"
	      indent="yes"/>

  <xsl:strip-space elements="*"/>

<!-- output method not used for the direct output -->
  <xsl:output method="text" name="txt"
	      encoding="UTF-8"/>
  
  <!-- position variable -->
  <!--xsl:variable name="poser" select="position()"/-->
  <!-- tab -->
  <xsl:variable name="tab" select="'&#9;'"/>
  <!-- new line -->
  <xsl:variable name="nl" select="'&#xa;'"/>

<!-- BEGINNING -->
<!-- BEGINNING -->
<!-- BEGINNING -->

  <xsl:template match="*:FMPXMLRESULT">
    <xsl:value-of select="concat('\_sh v3.0 588 Dictionary',$nl,'\_DateStampHasFourDigitYear',$nl,$nl)"/>
      <xsl:apply-templates/>
    <xsl:value-of select="$nl"/>
  </xsl:template>
  
  
  <xsl:template match="entry">
    <xsl:apply-templates select="data"/>
    <xsl:for-each select="data">
        <xsl:sort select="@TB_sortOrder" data-type="number"/>
    </xsl:for-each>    
    <xsl:value-of select="$nl"/>
  </xsl:template>
  
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

  
  <xsl:template match="data">
    <xsl:variable name="poser" select="position()"/>
    <xsl:choose>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $lx">
        <xsl:value-of select="concat('\lx',$tab)"/>
          <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $grad">
        <xsl:value-of select="concat('\grad',$tab)"/>
        <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $ps">
        <xsl:value-of select="concat('\ps',$tab)"/>
        <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $u1">
        <xsl:value-of select="concat('\u',$tab)"/>
        <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $ge">
        <xsl:value-of select="concat('\ge',$tab)"/>
        <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
      <xsl:when test="../../*:METADATA/*[position()=$poser]/@NAME = $FMnoJW">
        <xsl:value-of select="concat('\FMnoJW',$tab)"/>
        <xsl:value-of select="."/>
        <xsl:value-of select="$nl"/>
      </xsl:when>
    </xsl:choose>
    <!--xsl:for-each select="data">
        <xsl:sort select="@TB_sortOrder" data-type="number"/>
    </xsl:for-each-->
  </xsl:template>

<!-- END -->
<!-- END -->
<!-- END -->


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
    <xsl:apply-templates/>
    <!--xsl:result-document href="milkshake.{$et}" format="{$oft}">
      <xsl:apply-templates/>
    </xsl:result-document-->
    <xsl:result-document href="milkshake_Sort.{$ex}" format="{$ofx}">
      <xsl:apply-templates/>
    </xsl:result-document>
  </xsl:template>


</xsl:stylesheet>
