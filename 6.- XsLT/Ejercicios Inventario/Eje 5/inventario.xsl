<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <h1>Resultados</h1>
                <table border="1">
                    <xsl:for-each select="inventario/producto">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="peso"/></td>
                            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>