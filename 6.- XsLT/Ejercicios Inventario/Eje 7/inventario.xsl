<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <h4>Mostrando Productos del aula 6</h4>
                <ul>
                    <xsl:for-each select="inventario/producto">
                        <xsl:if test="lugar/aula='6'">
                                <li><xsl:value-of select="nombre"/></li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>