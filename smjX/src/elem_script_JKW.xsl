<?xml version="1.0"?>
<!--+
    | Usage: java -Xmx2048m net.sf.saxon.Transform -it main THIS_FILE inDir=DIR
    | parametrized grep for element name
    +-->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:fn="http://www.w3.org/2005/xpath-functions"
		xmlns:xhtml="http://www.w3.org/1999/xhtml"
		xmlns:functx="http://www.functx.com"
		exclude-result-prefixes="xs xhtml functx">

  <xsl:strip-space elements="*"/>

  <xsl:output method="text" name="txt"
	      encoding="UTF-8"/>

  <xsl:output method="xml" name="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>
  
  
<!--function found/copied from: http://www.xsltfunctions.com/xsl/functx_chars.html to divide up individual characters of a string-->
  <xsl:function name="functx:chars" as="xs:string*" 
              xmlns:functx="http://www.functx.com" >
    <xsl:param name="arg" as="xs:string?"/> 
    <xsl:sequence select=" 
     for $ch in string-to-codepoints($arg)
     return codepoints-to-string($ch)"/>
   </xsl:function> 
  
  
  <xsl:param name="inFile" select="'gogo_file'"/>
  <xsl:param name="inDir" select="'xxx_out_xxx'"/>
  <xsl:param name="outDir" select="'out_1'"/>
  <xsl:param name="elem" select="'col'"/>
  <xsl:variable name="of" select="'txt'"/>
  <xsl:variable name="e" select="'txt'"/><!-- extension -->
  <xsl:variable name="debug" select="true()"/>
  <xsl:variable name="nl" select="'&#xa;'"/><!-- new line -->
  <xsl:variable name="slang" select="'sma'"/>
  <xsl:variable name="tlang" select="'nob'"/>
  
  <xsl:template match="/" name="main">

    <xsl:for-each select="for $f in collection(concat($inDir,'?recurse=no;select=*.xml;on-error=warning')) return $f">
      
      <xsl:variable name="current_file" select="(tokenize(document-uri(.), '/'))[last()]"/>
                                            <!-- tokenize(string,pattern); pattern to make breaks at-->
      <xsl:variable name="file_name" select="substring-before($current_file, '.')"/>
      <xsl:variable name="current_dir" select="substring-before(document-uri(.), $current_file)"/>
      <xsl:variable name="current_location" select="concat($inDir, substring-after($current_dir, $inDir))"/>
      
      <xsl:if test="$debug">
	<xsl:message terminate="no">
	  <xsl:value-of select="concat('-----------------------------------------', $nl)"/>
	  <xsl:value-of select="concat('processing file: ', $current_file, '; file_name: ', $file_name, $nl)"/>
	  <xsl:value-of select="'-----------------------------------------'"/>
	</xsl:message>
      </xsl:if>
      
      
      <xsl:variable name="cufi">
	    <xsl:for-each select=".//*[local-name() = $elem]">
	    <xsl:variable name="tail" select="concat(': ',fn:substring(.,1,2),$nl)"/>
	    <xsl:if test="count(./@*) = 1">
 	      <xsl:if test="./@*[local-name() = 'id']">
	        <xsl:value-of select="concat(./@id,'_',fn:upper-case(local-name()),': ')"/>
	      </xsl:if>
	      <xsl:if test="not(./@*[local-name() = 'id'])">
	        <xsl:value-of select="concat(./@*/local-name(),'-|',./@*,'|-')"/>
	      </xsl:if>
	    </xsl:if>
	    <xsl:if test="not(count(./@*) = 1)">
	      <xsl:for-each select="./@*">
	        <xsl:variable name="letter">
	          <xsl:for-each select="functx:chars(.)">
	            <xsl:value-of select="."/>
	            <xsl:if test="not(position() = last())">
  	              <xsl:value-of select="'_'"/>
                </xsl:if>
              </xsl:for-each>
	        </xsl:variable>
	        <xsl:value-of select="concat(fn:upper-case(fn:substring(./local-name(),1,1)),fn:lower-case(fn:substring(./local-name(),2)),'$',$letter,'$ ')"/>
	      </xsl:for-each>
	    </xsl:if>
	      <xsl:value-of select="$tail"/>
	    </xsl:for-each>
      </xsl:variable>
      
      
      <xsl:result-document href="{$outDir}/{$file_name}.{$e}" format="{$of}">
	    <xsl:copy-of select="$cufi"/>
      </xsl:result-document>
    </xsl:for-each>
    
  </xsl:template>
  
</xsl:stylesheet>
