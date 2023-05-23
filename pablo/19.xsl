<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="universidad">
        <xsl:apply-templates select="carreras/carrera"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="carrera">
        <p>
    Nombre:
            <xsl:value-of select="nombre"/>
        </p>
        <xsl:if test="@id='c03'">
            <xsl:comment>Comentario Solo sale en el HTML</xsl:comment>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>