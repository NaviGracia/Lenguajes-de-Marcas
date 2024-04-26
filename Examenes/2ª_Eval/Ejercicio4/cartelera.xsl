<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <!-- Genera un archivo XML que muestre las sesiones a las que proyecta el cine
    cuyo código es N101-->
    <xsl:template match="/">
        <cartelera>
            <peliculas>
                <xsl:for-each select="cartelera/peliculas/pelicula[proyecciones/proy_cine/@codigo='N101']">
                    <pelicula>
                        <titulo><xsl:value-of select="titulo"/></titulo>
                        <proyecciones>
                            <xsl:copy-of select="proyecciones/proy_cine[@codigo='N101']"/>
                        </proyecciones>
                    </pelicula>                    
                </xsl:for-each>
            </peliculas>
        </cartelera>
    </xsl:template>

</xsl:stylesheet>

