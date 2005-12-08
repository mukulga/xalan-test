<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>

  <!-- Test FileName: mk037.xsl -->
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
  <!-- Example: dummy.xsl renamed to dummy.xml, list-includes.xsl -->
  <!-- Chapter/Page: 7-444 -->
  <!-- Purpose: Using document function to analyze a stylesheet -->

<xsl:template match="/">
  <html><body>
    <h1>Stylesheet Module Structure</h1>
    <ul>
    <xsl:apply-templates select="*/xsl:include | */xsl:import"/>
    </ul>
  </body></html>
</xsl:template>

<xsl:template match="xsl:include | xsl:import">
    <li><xsl:value-of select="concat(local-name(),'s ',@href)"/>
    <xsl:variable name="module" select="document(@href)"/>
    <ul>
    <xsl:apply-templates select="$module/*/xsl:include | $module/*/xsl:import"/>
    </ul>
    </li>
</xsl:template>

  <!-- Copyright 1999-2004 The Apache Software Foundation.
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and limitations under the License. -->

</xsl:transform>
