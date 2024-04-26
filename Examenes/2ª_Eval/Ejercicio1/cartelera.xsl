<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <!-- Genera un archivo HTML en el que muestres una lista con las distintas 
    películas y sus protagonistas.-->
    <xsl:template match="/">
        <html>
            <head>
                <link href="cartelera.css" rel="stylesheet" type="text/css"/>
                <title>Ejercicio Adicional Variables</title>
            </head>
            <body>
                <xsl:for-each select="cartelera/peliculas/pelicula">
                    <ul>
                        <li><xsl:value-of select="titulo"/>
                            <ul>
                                <xsl:for-each select="reparto/actor">
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

