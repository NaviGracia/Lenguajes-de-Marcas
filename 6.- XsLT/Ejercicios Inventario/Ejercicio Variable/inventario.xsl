<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:variable name="unidad_peso" select="/inventario/producto/peso/@unidad[../../@codigo='P2']"/>
    <xsl:template match="/">

        <html>
            <head>
                <link href="inventario.css" rel="stylesheet" type="text/css"/>
                <title>Ejercicio Variables</title>
            </head>
            <body>
                    <h1>Mostrando productos que tienen la misma unidad de peso que P2: <xsl:value-of select="$unidad_peso"/></h1>
                    <xsl:apply-templates select="//producto[peso/@unidad = $unidad_peso]"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <xsl:value-of select="nombre"/>
        -
        <xsl:value-of select="peso"/>
        <xsl:value-of select="peso/@unidad"/>
    </xsl:template>

</xsl:stylesheet>