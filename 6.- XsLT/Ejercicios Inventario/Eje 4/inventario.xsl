<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <inventario>
            <xsl:for-each select="//producto">
                <xsl:if test="lugar/@edificio='B'">
                    <xsl:copy-of select="."/>
                </xsl:if>
            </xsl:for-each>
        </inventario>
    </xsl:template>
</xsl:stylesheet>