<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <h4>Mostrando productos que estén en el edificio B</h4>
                <xsl:for-each select="inventario/producto">
                    <xsl:if test="lugar/@edificio='B'">
                        <p><xsl:value-of select="nombre"/></p>
                        <ul>
                            <li>
                                <p>Peso: <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></p>                        
                            </li>
                            <li>
                                <p>Edificio: <xsl:value-of select="lugar/@edificio"/></p>                        
                            </li>
                            <li>
                                <p>Aula: <xsl:value-of select="lugar/aula"/></p>                        
                            </li>
                        </ul>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>