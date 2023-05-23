<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="universidad">
        <p>
            <xsl:text>Universidad de nombre </xsl:text>
            <xsl:value-of select="nombre" />
            <xsl:text> de pais </xsl:text>
            <xsl:value-of select="pais"/>
            <xsl:apply-templates select="carreras"/>
        </p>
    </xsl:template>

    <xsl:template match="carreras">
        <p>
            <xsl:text>Lista carreras: </xsl:text>
            <xsl:apply-templates select="carrera"/>
        </p>
    </xsl:template>

    <xsl:template match="carrera">
    <p> 
        <xsl:text>Id: </xsl:text>
        <xsl:value-of select="@id"/>
        <xsl:text> Nombre: </xsl:text>
        <xsl:value-of select="nombre"/>
        <xsl:text> Plan: </xsl:text>
        <xsl:value-of select="plan"/>
        <xsl:text> Creditos: </xsl:text>
        <xsl:value-of select="creditos"/>
        <xsl:text> Centro: </xsl:text>
        <xsl:value-of select="centro"/>
    </p>
    </xsl:template>

</xsl:stylesheet>
