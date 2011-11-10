<?xml version="1.0"?>
<!--+
    | 
    | compares (ped vs. smenob) and put ped-flags on smenob-entries 
    | Usage: java net.sf.saxon.Transform -it main cfSmeSmj.xsl
    +-->

<!-- java -Xmx2048m net.sf.saxon.Transform -it main cfPED_resources.xsl ped_file=xml/nouns.xml smenob_file=../src/nounCommon_smenob.xml -->
<!-- java -Xmx2048m net.sf.saxon.Transform -it main flagSmenob.xsl ped_file=xml/adjectives.xml smenob_file=../src/adjective_smenob.xml  -->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:local="nightbar"
		exclude-result-prefixes="xs local">

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  
  <!-- Input files -->
  <!--xsl:param name="toIndent" select="'default.xml'"/-->
  <xsl:param name="toIndent" select="'TESTERnounParadigms_sje.xml'"/>

  <!-- Output files -->
  <xsl:variable name="outputDir" select="'IndentedDir'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($toIndent, '/'))[last()], '.xml')"/>
  
  
  
  <xsl:template match="/" name="main">
    
    <xsl:choose>
      <xsl:when test="doc-available($toIndent)">
	
	<!-- indent document -->
	<xsl:result-document href="{$outputDir}/{$file_name}_indented.{$e}" format="{$output_format}">
	  <xsl:copy-of select="doc($toIndent)"/>
	</xsl:result-document>

      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Cannot locate: </xsl:text><xsl:value-of select="$toIndent"/><xsl:text>&#xa;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>

