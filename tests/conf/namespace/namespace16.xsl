<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: NSPC16 -->
  <!-- Document: http://www.w3.org/TR/xpath -->
  <!-- DocVersion: 19991008 -->
  <!-- Section: 2.2 Stylesheet Element. -->
  <!-- Purpose: XSLT processor must ignore a top-level element without giving
  	   and error if it does not recognize the namespace URI. -->

<help:Header comment="Header would go here"/>
<help:TOC comment="Table of Contents"/>

<help:Template comment="This is the main template" match="doc" process="children"/>
<xsl:template match="doc">
  <out>
	<xsl:value-of select="'Testing '"/>
	<xsl:for-each select="*">
		<xsl:value-of select="."/><xsl:text> </xsl:text>		
	</xsl:for-each>

	<xsl:call-template name="ThatTemp">
		<xsl:with-param name="sam">quos</xsl:with-param>
	</xsl:call-template>
  </out>
</xsl:template>

<help:Template comment="Named template" match="*" process="children"/>
<xsl:template name="ThatTemp">
  <xsl:param name="sam">bo</xsl:param>
  <xsl:copy-of select="$sam"/>
</xsl:template>

<help:Footer comment="Footer would go here"/>
</xsl:stylesheet>
