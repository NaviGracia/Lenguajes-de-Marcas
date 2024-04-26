<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:variable name="codigo_cine" select="cartelera/cines/cine/@codigo[nombre='Cinema Friki']"/>
    <!-- Genera un archivo HTML que muestre las sesiones de las películas 
    del cine Cinema Friki.-->
    <xsl:template match="/">
        <html>
            <head>
                <link href="cartelera.css" rel="stylesheet" type="text/css"/>
                <title>Ejercicio Adicional Variables</title>
            </head>
            <body>
                <h1>Listado de Sesiones de Cinema Friki(N101)</h1>
                    <xsl:for-each select="cartelera/peliculas/pelicula[proyecciones/proy_cine/@codigo=$codigo_cine]">
                        <ul>
                            <li><xsl:value-of select="titulo"/>
                                <ul>
                                    <xsl:for-each select="proyecciones/proy_cine/sesion[../@codigo=$codigo_cine]">
                                        <li><xsl:value-of select="."/></li>      
                                    </xsl:for-each>
                                </ul>
                            </li>
                        </ul>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

