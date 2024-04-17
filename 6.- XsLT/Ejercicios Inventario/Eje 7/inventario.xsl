<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <inventario>
            <xsl:for-each select="//producto[lugar/aula='6']">
                <producto>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                </producto>
            </xsl:for-each>
        </inventario>
    </xsl:template>
</xsl:stylesheet>