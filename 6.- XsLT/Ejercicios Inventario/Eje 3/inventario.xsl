<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <h3>Mostrando productos con peso inferior a 7kg</h3>
                <xsl:choose>
                </xsl:choose>
                <xsl:for-each select="inventario/producto">
                    <xsl:if test="peso/@unidad='kg'">
                        <xsl:if test="peso &lt; 7">
                            <ul>
                                <li>
                                    <xsl:value-of select="@codigo"/>
                                    <ul>
                                        <li>
                                            <p>Nombre: <xsl:value-of select="nombre"/></p>
                                        </li>
                                        <li>
                                            <p>Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/></p>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    peso/@unidad='g'

</xsl:stylesheet>