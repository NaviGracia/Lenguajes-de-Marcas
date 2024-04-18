<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:variable name="unidad_peso" select="/inventario/producto/peso/@unidad[../../@codigo='P2']"/>
    <xsl:variable name="n_prod" select="/inventario/producto">
        <xsl:number count="producto/peso[@unidad=$unidad_peso]" format="1"/>
    </xsl:variable>
    <xsl:template match="/">
        <!-- Cuantos productos tienen la misma unidad de peso que P2? -->
        <html>
            <head>
                <link href="inventario.css" rel="stylesheet" type="text/css"/>
                <title>Ejercicio Adicional Variables</title>
            </head>
            <body>
                    <h1>Mostrando cantidad de productos que tienen la misma unidad de peso que P2: <xsl:value-of select="$unidad_peso"/></h1>
                    <p><xsl:value-of select="$n_prod"/></p>     
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>