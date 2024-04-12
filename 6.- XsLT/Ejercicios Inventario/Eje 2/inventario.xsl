<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <inventario>
            <xsl:for-each select="inventario/producto">
                <xsl:if test="lugar/@edificio='A'">
                    <xsl:if test="lugar/aula=6">
                        <producto>
                                <xsl:attribute name="codigo">
                                    <xsl:value-of select="@codigo"/>
                                </xsl:attribute>
                            <peso>
                                <xsl:attribute name="unidad">
                                    <xsl:value-of select="peso/@unidad"/>
                                </xsl:attribute>
                                <xsl:value-of select="peso"/>
                            </peso>
                            <nombre><xsl:value-of select="nombre"/></nombre>
                            <lugar>
                                <xsl:attribute name="edificio">
                                    <xsl:value-of select="lugar/@edificio"/>
                                </xsl:attribute>
                                <aula><xsl:value-of select="lugar/aula"/></aula>
                            </lugar>
                        </producto>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </inventario>
    </xsl:template>
</xsl:stylesheet>