<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <xsl:for-each select="//producto">
                    <ul>
                        <li>
                            Producto <xsl:value-of select="@codigo"/>
                            <ul>
                                <li>
                                    Nombre: <xsl:value-of select="nombre"/>
                                </li>
                                <li>
                                    <xsl:apply-templates select="peso"/>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="./peso">
        Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/>
    </xsl:template>

    

</xsl:stylesheet>