<html xsl:version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      lang="en">

  <!-- FileName: spacing02 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 2.3 LRE as Stylesheet -->
  <!-- Creator: Paul Dick -->
  <!-- Purpose: Do everything inside an HTML element, including for-each and if structures. -->

<head>
  <title>Sales Results By Division</title>
</head>
<body>
  <table border="1">
    <tr>
      <th>Division</th>
      <th>Revenue</th>
      <th>Growth</th>
      <th>Bonus</th>
    </tr>
    <xsl:for-each select="sales/division">
      <!-- order the result by revenue -->
      <xsl:sort select="revenue" data-type="number" order="descending"/>
      <tr>
        <td>
          <em><xsl:value-of select="@id"/></em>
        </td>
        <td>
          <xsl:value-of select="revenue"/>
        </td>
        <td>
          <!-- highlight negative growth in red -->
          <xsl:if test="growth &lt; 0">
            <xsl:attribute name="style">
              <xsl:text>color:red</xsl:text>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="growth"/>
        </td>
        <td>
          <xsl:value-of select="bonus"/>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</body>

  <!-- Copyright 1999-2004 The Apache Software Foundation.
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and limitations under the License. -->


</html>
