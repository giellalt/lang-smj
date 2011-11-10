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
  
  
  <!-- new line -->
  <xsl:variable name="nl" select="'&#xa;'"/>

  <!--xsl:template match="*:FMPXMLRESULT">
    <xsl:value-of select="."/>
    <xsl:value-of select="$nl"/>
  </xsl:template-->
  

<!-- Radiergummi fuer text von allen anderen Knoten als METADATA/RESULTSET (those specified otherwise); ie: phantom killer -->
  <xsl:template match="node()|@*">
    <xsl:apply-templates/>
  </xsl:template>


  <xsl:template match="/">
    <xsl:value-of select="."/>
    <xsl:value-of select="$nl"/>
    <xsl:apply-templates/><!-- this shows up in terminal -->
    <xsl:result-document href="thieves.xml" format="xml">
      <!--xsl:copy-of select="."/--><!-- NO! this just copies everything as is from "/"! -->
      <xsl:apply-templates/>
    </xsl:result-document>
  </xsl:template>


</xsl:stylesheet>
