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
  
  <!-- Output -->
  <xsl:variable name="outputDir" select="'000_outDir'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
  <xsl:variable name="nl" select="'&#xA;'"/>
  <xsl:variable name="debug" select="true()"/>
  
  
  
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

  <xsl:template name="processFile">
    <xsl:param name="theFile"/>
    <xsl:param name="theName"/>

    <xsl:variable name="output">
      <xsl:for-each select="$theFile/*:Workbook/*:Worksheet/*:Table/*:Row">
	<xsl:call-template name="processRow">
	  <xsl:with-param name="theRow" select="."/>
	  <xsl:with-param name="thePosition" select="position()"/>
	</xsl:call-template>
      </xsl:for-each>
    </xsl:variable>

    <!-- output document -->
    <xsl:result-document href="{$outputDir}/result_{$theName}.{$e}" format="{$output_format}">
      <output>
	<xsl:copy-of select="$output"/>
      </output>
    </xsl:result-document>

  </xsl:template>
  
  <xsl:template name="processRow">
    <xsl:param name="theRow"/>
    <xsl:param name="thePosition"/>
    
    <xsl:message terminate="no">
      <xsl:value-of select="concat('Row position ', $thePosition)"/>
    </xsl:message>
    
    <xsl:variable name="elName" select="if (position() = 1) then 'label' else 'row'"/>
    <xsl:variable name="isNonemptyRow" select="some $cell in $theRow satisfies not(normalize-space($cell) = '')"/>
    
    <xsl:if test="$isNonemptyRow">
      
      <xsl:element name="{$elName}">
	<xsl:attribute name="cell_count">
	  <xsl:value-of select="count($theRow//*:Cell)"/>
	</xsl:attribute>
	<xsl:attribute name="id">
	  <xsl:value-of select="$thePosition"/>
	</xsl:attribute>
	
	<xsl:for-each select="$theRow//*:Cell">
	  <xsl:message terminate="no">
	    <xsl:value-of select="concat('Processing column: ', .)"/>
	  </xsl:message>
	  
	  <xsl:if test="preceding-sibling::*:Cell[not(./@*:Index)]">
	    <xsl:element name="cl">
	      <xsl:attribute name="id">
		<xsl:value-of select="position()"/>
	      </xsl:attribute>
	      <xsl:value-of select="./*:Data"/>
	    </xsl:element>
	  </xsl:if>
	  
	  <xsl:if test="./@*:Index">

	    <xsl:variable name="theRange">
	      <xsl:call-template name="dummyCells">
		<xsl:with-param name="index" select="./@*:Index"/>
		<xsl:with-param name="position" select="position()"/>
	      </xsl:call-template>
	    </xsl:variable>
	    
	    <xsl:for-each select="$theRange/dummy_position">
	      <xsl:element name="col">
		<xsl:attribute name="id">
		  <xsl:value-of select="."/>
		</xsl:attribute>
	      </xsl:element>
	    </xsl:for-each>
	  </xsl:if>
	  
	  <xsl:element name="col">
	    <xsl:attribute name="id">
	      <xsl:value-of select="position()"/>
	    </xsl:attribute>
	    
	    <xsl:if test="./@*:Index">
	      <xsl:attribute name="real_index">
		<xsl:value-of select="./@*:Index"/>
	      </xsl:attribute>
	    </xsl:if>
	    
	    <content>
	      <xsl:value-of select="./*:Data"/>
	    </content>

	    <xsl:if test="following-sibling::*:Cell">
	      <xsl:variable name="flls">
		<followers>
		  <xsl:for-each select="following-sibling::node()[generate-id(preceding-sibling::*:Cell[./@*:Index][1])=
					generate-id(current())]">
		    
		    <xsl:if test="false()">
		      <xsl:message terminate="no">
			<xsl:value-of select="concat('/////', $nl)"/>
			<xsl:value-of select="concat('here is: ', ., $nl)"/>
			<xsl:value-of select="'/////'"/>
		      </xsl:message>
		    </xsl:if>
		    
		    <xsl:if test="self::*">
		      <xsl:element name="wtf">
			<xsl:attribute name="id">
			  <xsl:value-of select="position()"/>
			</xsl:attribute>
			<xsl:value-of select="./*:Data"/>
		      </xsl:element>
		    </xsl:if>
		    
		  </xsl:for-each>
		</followers>
	      </xsl:variable>

	      <xsl:if test="$flls/followers/*">
		<xsl:copy-of copy-namespaces="no" select="$flls"/>
	      </xsl:if>
	      
	    </xsl:if>
	    
	  </xsl:element>
	  
	</xsl:for-each>
      </xsl:element>
    </xsl:if>
  </xsl:template>


  <xsl:template name="dummyCells">
    <xsl:param name="index" select="0"/>
    <xsl:param name="position" select="0"/>
    
    <xsl:if test="($index - $position) > 0">

      <dummy_position>
	<xsl:value-of select="$position"/>
      </dummy_position>

      <xsl:call-template name="dummyCells">
	<xsl:with-param name="index" select="$index"/>
	<xsl:with-param name="position" select="$position + 1"/>
      </xsl:call-template>

    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>

