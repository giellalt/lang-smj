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

<!--+
    | BEGIN variables **************************************
    | BEGIN variables **************************************
    | BEGIN variables **************************************
    +-->  
<!-- TOOLBOX DICTIONARY POSITION NAME VARIABLES -->  
<!-- \lx -->
  <xsl:variable name="lx_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB lx no INF suffix'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \grad -->
  <xsl:variable name="grad_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB grad summary'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \u (main) -->
  <xsl:variable name="u1_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB u1 no suffix'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \a -->
  <xsl:variable name="a_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB a stem extension alt no dash'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \u (secondary) -->
  <xsl:variable name="u2_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB u2 no suffix'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \ps -->
  <xsl:variable name="ps_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='TB ps conversion to English'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \ge -->
  <xsl:variable name="ge_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='English translation'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
<!-- \gs -->
  <xsl:variable name="gs_pos">
    <xsl:for-each select="*:FMPXMLRESULT/*:METADATA/*:FIELD">
      <xsl:if test="@NAME='Swedish translation'">
        <xsl:value-of select="position()"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
  
  <!-- tab -->
  <xsl:variable name="tab" select="'&#9;'"/>
  <!-- new line -->
  <xsl:variable name="nl" select="'&#xa;'"/>
<!--+
    | END variables **************************************
    | END variables **************************************
    | END variables **************************************
    +-->



<!--+
    | BEGIN script **************************************
    | BEGIN script **************************************
    | BEGIN script **************************************
    +-->  

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
      <xsl:apply-templates select="*:COL"/>
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
      <xsl:value-of select="."/>
    </xsl:element>
      <xsl:if test="position()=last()">
        <xsl:element name="Toolbox">
          <xsl:element name="lx">
            <xsl:value-of select="../*:COL[position()=$lx_pos]"/>
          </xsl:element>
          <xsl:element name="grad">
            <xsl:value-of select="../*:COL[position()=$grad_pos]"/>
          </xsl:element>
        </xsl:element>
      </xsl:if>
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
    <!--xsl:result-document href="chocolateMilk.{$ex}" format="{$ofx}">
      <xsl:apply-templates/>
    </xsl:result-document-->
    <!--xsl:result-document href="thievesLtd.{$et}" format="{$oft}">
      <xsl:apply-templates/>
    </xsl:result-document-->
  </xsl:template>


</xsl:stylesheet>
