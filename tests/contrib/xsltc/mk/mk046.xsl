<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>

  <!-- Test FileName: mk046.xsl -->
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
  <!-- Example: shapes.xml, area.xsl -->
  <!-- Chapter/Page: 7-505 -->
  <!-- Purpose: Using position() to process node set recursively -->
  
<xsl:template match="sales">
<html><body>
   <h1>Product sales by period</h1>
   <xsl:variable name="cols" select="count(product[1]/period)"/>
   <table border="1" cellpadding="5" width="100%">
      <tr>
      <th width="50%">Product</th>
      <xsl:for-each select="product[1]/period">
         <th width="{round(50 div $cols)}%">
            <xsl:value-of select="@name"/>
         </th>
      </xsl:for-each>
   </tr>
   <xsl:for-each select="product">
   <tr>
      <td><xsl:value-of select="text()"/></td>
      <xsl:for-each select="period">
         <td>
            <xsl:value-of select="."/>
         </td>
      </xsl:for-each>
   </tr>
   </xsl:for-each>
   </table>
</body></html>
</xsl:template>

</xsl:transform>
