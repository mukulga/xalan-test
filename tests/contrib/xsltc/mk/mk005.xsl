<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      version="1.0">
  
  <!-- Test FileName: mk005.xsl -->
  <!-- Source Attribution: 
       This test was written by Michael Kay and is taken from 
       'XSLT Programmer's Reference' published by Wrox Press Limited in 2000;
       ISBN 1-861003-12-9; copyright Wrox Press Limited 2000; all rights reserved. 
       Now updated in the second edition (ISBN 1861005067), http://www.wrox.com.
       No part of this book may be reproduced, stored in a retrieval system or 
       transmitted in any form or by any means - electronic, electrostatic, mechanical, 
       photocopying, recording or otherwise - without the prior written permission of 
       the publisher, except in the case of brief quotations embodied in critical articles or reviews.
  -->
  <!-- Example:  A Simplified Styleshet (books.xml, simplified.xsl) -->
  <!-- Chapter/Page: 3-105 -->
  <!-- Purpose: Using simplified stylesheet with html skeleton -->

<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<html>
  <head>
    <title>A list of books</title>
  </head>
  <body>
  <h1>A list of books</h1>
   <table border="2">
   <xsl:for-each select="//book">
      <xsl:sort select="author"/>
      <tr>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="@category"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
   </xsl:for-each>
   </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
