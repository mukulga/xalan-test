<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- FileName: NSPC28 -->
  <!-- Document: http://www.w3.org/TR/xpath -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 4.1 -->
  <!-- Purpose: Test of local-name on namespace axis. -->
  <!-- The local-name() function should work on this axis, returning the same value as name().
     The XML parser has freedom to present namespaces in any order it wants.
     The input should have only one namespace if you want consistent results across parsers. -->

<xsl:template match="doc">
  <out>
    <xsl:apply-templates/>
  </out>
</xsl:template>

<xsl:template match="item">
  <xsl:value-of select="local-name(namespace::*[1])"/>
</xsl:template>

</xsl:stylesheet>
