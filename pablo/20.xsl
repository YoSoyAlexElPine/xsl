<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="universidad">
<xsl:call-template name="miTemplate"></xsl:call-template>
</xsl:template>

<xsl:template name="miTemplate" match="carrera">
    <xsl:text>
    Nombre:</xsl:text>
    <xsl:value-of select="nombre"></xsl:value-of>
    <xsl:text>Pais:</xsl:text>
    <xsl:value-of select="pais"></xsl:value-of>
</xsl:template>
<!--Aunque entramos en otro template carrera, llamamos al
template de "miTemplate" e imprime sus cosas -->
</xsl:stylesheet>