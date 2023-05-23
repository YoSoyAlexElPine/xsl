<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="universidad">
        <xsl:call-template name="miTemplate">
            <xsl:with-param name="numeroCarreras">
                <xsl:text>---</xsl:text>
                <xsl:value-of
                    select="count(carreras/carrera)" />
                <xsl:text>---</xsl:text>
            </xsl:with-param>
        </xsl:call-template>

    </xsl:template>
    <xsl:template match="carrera" name="miTemplate">
        <xsl:param name="numeroCarreras"></xsl:param>
        <xsl:text>
Nombre:</xsl:text>
        <xsl:value-of
            select="nombre" />
        <xsl:text>
Numero de carreras:</xsl:text>
        <xsl:value-of select="$numeroCarreras" />
    </xsl:template>
</xsl:stylesheet>