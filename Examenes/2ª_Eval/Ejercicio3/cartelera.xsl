<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <!-- Genera un archivo XML que contenga sólo las películas que cumplan que 
    su título contenga la letra s (en mayúscula o minúscula) y sean posteriores
     al año 1940.-->
    <xsl:template match="/">
        <cartelera>
            <peliculas>
                <xsl:for-each select="cartelera/peliculas/pelicula[anyo>1940 and ((contains(titulo, 's')) or (contains(titulo, 'S')))]">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
            </peliculas>
        </cartelera>
    </xsl:template>

</xsl:stylesheet>
