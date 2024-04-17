<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <!-- Tabla con productos del edificio A que muestre un color diferente si es menor de 7kg, si es igual o si es mayor, sin usar if -->
        <html>
            <head>
                <title>Ejercicio Inventario</title>
            </head>
            <body>
                <table border="1">
                    <caption>Mostrando productos del edificio A</caption>
                    <tr>
                            <td>ID</td>
                            <td>Nombre</td>
                            <td>Peso</td>
                            <td>Edificio</td>
                    </tr>
                    <xsl:for-each select="//producto[lugar/@edificio ='A']">
                        <xsl:choose>
                            <xsl:when test="(lugar/@edificio ='A') and (peso/@unidad='kg' and peso &lt; 7) or (peso/@unidad='g' and peso &lt; 7000)">
                                <xsl:apply-templates select="//producto[(lugar/@edificio ='A') and (peso/@unidad='kg' and peso &lt; 7) or (peso/@unidad='g' and peso &lt; 7000)]"/>    
                            </xsl:when>
                            <xsl:when test="(peso/@unidad='kg' and peso = 7) or (peso/@unidad='g' and peso = 7000)">
                                <xsl:apply-templates select="//producto[(peso/@unidad='kg' and peso = 7) or (peso/@unidad='g' and peso = 7000)]"/>    
                            </xsl:when>
                            <xsl:when test="(peso/@unidad='kg' and peso &gt; 7) or (peso/@unidad='g' and peso &gt; 7000)">
                                <xsl:apply-templates select="//producto[(peso/@unidad='kg' and peso &gt; 7) or (peso/@unidad='g' and peso &gt; 7000)]"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//producto[(lugar/@edificio ='A') and (peso/@unidad='kg' and peso &lt; 7) or (peso/@unidad='g' and peso &lt; 7000)]">
        <tr>
            <td><xsl:value-of select="@codigo"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="//producto[(peso/@unidad='kg' and peso = 7) or (peso/@unidad='g' and peso = 7000)]">
        <tr>
            <td><xsl:value-of select="@codigo"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="//producto[(peso/@unidad='kg' and peso &gt; 7) or (peso/@unidad='g' and peso &gt; 7000)]">
        <tr>
            <td><xsl:value-of select="@codigo"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></td>
            <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>