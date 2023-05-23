<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="universidad">
    <!-- Crea un elemento estudio que engloba todo -->
        <xsl:element name="estudio">
            <xsl:apply-templates select="carreras/carrera"></xsl:apply-templates>
        </xsl:element>
    </xsl:template>
    <xsl:template match="carrera">
        <xsl:text>
        
        </xsl:text>
        <xsl:element name="{local-name()}">
            <xsl:for-each select="child::*">
                <xsl:text>

            </xsl:text>
                <xsl:element name="{local-name()}">
                    <xsl:value-of select="node()" />
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>