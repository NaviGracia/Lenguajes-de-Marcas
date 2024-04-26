<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <!-- Genera un archivo XML que muestre las sesiones a las que proyecta el cine
    cuyo código es N101-->
    <xsl:template match="/">
        <cine>
            <codigo>N101</codigo>
            <nombre><xsl:value-of select="/cartelera/cines/cine/nombre[../@codigo='N101']"/></nombre>
            <proyecciones>
                <xsl:copy-of select="cartelera/peliculas/pelicula/proyecciones/proy_cine/sesion[../@codigo='N101']"/>
            </proyecciones>
        </cine>
    </xsl:template>

</xsl:stylesheet>

