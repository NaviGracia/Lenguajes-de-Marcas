<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <inventario>
            <xsl:copy-of select="//producto[(peso>=7  and peso/@unidad='kg') or (peso>=7000  and peso/@unidad='g')]"/>
        </inventario>
    </xsl:template>

</xsl:stylesheet>