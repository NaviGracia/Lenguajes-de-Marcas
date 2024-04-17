<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <table border="1">
                    <caption>Mostrando productos del edificio A con peso inferior a 7kg</caption>
                    <tr>
                            <td>ID</td>
                            <td>Nombre</td>
                            <td>Peso</td>
                            <td>Edificio</td>
                    </tr>
                    <xsl:for-each select="//producto[lugar/@edificio ='A']">
                            <xsl:choose>
                                <xsl:when test="(peso/@unidad='kg' and peso &lt; 7)">
                                        <tr>
                                            <td><xsl:value-of select="@codigo"/></td>
                                            <td><xsl:value-of select="nombre"/></td>
                                            <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
                                            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                                        </tr>
                                </xsl:when>
                                <xsl:when test="(peso/@unidad='g' and peso &lt; 7000)">
                                        <tr>
                                            <td><xsl:value-of select="@codigo"/></td>
                                            <td><xsl:value-of select="nombre"/></td>
                                            <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
                                            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                                        </tr>
                                </xsl:when>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>