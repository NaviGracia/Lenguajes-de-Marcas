<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejemplo XSLT</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                      <th>Ciudad</th>
                      <th>Habitantes</th>
                    </tr>
                    <xsl:for-each select="ciudades/ciudad">
                    <tr>
                      <td><xsl:value-of select="nombre"/></td>
                      <xsl:choose>
                        <xsl:when test="habitantes &lt; 50001">
                          <td bgcolor="#ff00ff">
                          <xsl:value-of select="habitantes"/></td>
                        </xsl:when>
                        <!-- 1. Caso en el que hay una misma expresión pero con diferentes procedimientos-->
                        <xsl:when test="habitantes &lt; 900001">
                          <td bgcolor="#33FFE5">
                          <xsl:value-of select="habitantes"/></td>
                        </xsl:when>
                        <!-- Se aplica el primer procedimiento por estar delante-->
                        <xsl:otherwise>
                          <td><xsl:value-of select="habitantes"/></td>
                        </xsl:otherwise>
                      </xsl:choose>
                    </tr>
                    </xsl:for-each>
                  </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>