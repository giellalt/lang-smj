<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="nightbar"
    exclude-result-prefixes="xs local">
<!--
    | this stylesheet is intended to transform Filemaker XML-export
    | sample 'data.xml' into a prettier structure (originally from Pite noun paradigm database)
    -->

<!--
    | this stylesheet is intended to indented output (Legasteniker könnten probleme mit diesem Satz bekommen)
    -->

<!--
    | Lesson learned: difference between xslt 2.0 and xslt 1.0
    | xslt 2.0 allows multiple outputs and even customizing them in different formats,
    | that means one can output both html and xml and txt files in one run.
    | Remember the structure: 
    |  <xsl:result-document href="{$outDir}/{$file_name}.{$e}" format="{$of}">
    |        <xsl:copy-of select="$myOutput"/>
    |  </xsl:result-document>
    | where the variable $of refers to the output format one wishes to use specificly for this file.
    | This is not possible without NAMING different output format in the same stylesheet so that 
    | if needed you can use them via the name.
    | Here is the tiny yet decisive difference between xslt 1.0 and xslt 2.0:
    | If you use the current stylesheet to output data without using the result-document-element
    | (see above or compare with the gt/smj/smX/scr/joshs_dream.xsl to see how it works)
    | you need to use a declaration of the output method WITHOUT name. If you put a name (XSLT 2.0)
    | it wouldn't have any effect on the output data.
    | Note that there is no crime in using several output method declarations as long as there is only
    | ONE which is not named (or perhaps if several non-named exist, the last encountered is picked up, 
    | but this needs to be tested)
    | What I did:
    | 1. I commented in the NAMED output method "txt" (no effect on the output data 
    |    if result-document element not in use)
    | 2. I doubled the xml output method: the NAMED method "xml" which it was in the script doesn't have any effect,
    |    the NON-NAMED (no attribute with the name "name" and the value "xml") output method takes effect.
    | Try it and enjoy!
    -->

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

<!--xsl:variable name="outPut"-->
  <xsl:template match="*:FMPXMLRESULT">
    <xsl:element name="sjeNOUNparadigms">
      <xsl:element name="source"/>
      <xsl:apply-templates/>
    </xsl:element>
    <xsl:value-of select="$nl"/>
  </xsl:template>
  
  
  <xsl:template match="*:RESULTSET/*:ROW">
    <xsl:element name="paradigm">
      <xsl:attribute name="FMrecordID">
        <xsl:value-of select="./@RECORDID"/>
      </xsl:attribute>
      <xsl:apply-templates select="*:COL"/>
    </xsl:element>
  </xsl:template>
  
  
  <xsl:template match="*:RESULTSET/*:ROW/*:COL">
    <xsl:element name="data" >
      <xsl:attribute name="descriptor">
        <!--xsl:value-of select="'someText'"/-->
        <xsl:variable name="poser" select="position()"/>
        <xsl:value-of select="../../../*:METADATA/*[position()=$poser]/@NAME"/>
      </xsl:attribute>
      <xsl:attribute name="type">
        <xsl:variable name="poser" select="position()"/>
        <xsl:value-of select="fn:lower-case(../../../*:METADATA/*[position()=$poser]/@TYPE)"/>
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

<!--
    |  <xsl:template match="/">
    |    <xsl:result-document href="theives.{$e}" format="{$of}">
    |        <xsl:copy-of select="."/>
    |    </xsl:result-document>
    |    <xsl:result-document href="{$outDir}/{$file_name}.{$e}" format="{$of}">
    |        <xsl:copy-of select="$myOutput"/>
    |    </xsl:result-document>
    |  </xsl:template>
    -->

  <xsl:template match="/">
    <xsl:apply-templates/><!-- this shows up in terminal -->
    <xsl:result-document href="thieves.{$ex}" format="{$ofx}">
      <!--xsl:copy-of select="."/--><!-- NO! this just copies everything as is from "/"! -->
      <xsl:apply-templates/>
    </xsl:result-document>
    <!--xsl:result-document href="thievesLtd.{$et}" format="{$oft}">
      <xsl:apply-templates/>
    </xsl:result-document-->
  </xsl:template>


</xsl:stylesheet>
