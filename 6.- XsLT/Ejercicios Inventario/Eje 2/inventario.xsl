<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <xsl:for-each select="inventario/producto">
                    <xsl:if test="lugar/@edificio='A'">
                        <xsl:if test="lugar/aula='6'">
                            <h3>Mostrando productos que están en el edificio <xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></h3>
                            <ul>
                                <xsl:apply-templates select="nombre"/>
                                <xsl:apply-templates select="peso"/>
                            </ul>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//nombre">
        <li>
            <p>Nombre: <xsl:value-of select="."/></p>
        </li>
    </xsl:template>
        
    <xsl:template match="//peso">
        <li>
            <p>Peso: <xsl:value-of select="."/> <xsl:value-of select="./@unidad"/></p>
        </li>
    </xsl:template>
</xsl:stylesheet>