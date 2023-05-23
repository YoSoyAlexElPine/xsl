<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="universidad">
        <html>
            <body>
                <li>
                    <xsl:apply-templates select="carreras/carrera"/>
                </li>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="carrera">
            <xsl:text>Nombre: </xsl:text>
            <xsl:value-of select="nombre"/>
            <xsl:text>Plan: </xsl:text>
            <xsl:value-of select="plan"/>
            <xsl:choose>
                <xsl:when test="creditos &lt; 280">
                    <xsl:apply-templates select="creditos" mode="verde"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="creditos" mode="rojo"/>
                </xsl:otherwise>
            </xsl:choose>
    </xsl:template>
    <xsl:template match="creditos" mode="verde">
        <p style="color:green">
            <xsl:text>Creditos: </xsl:text>
            <xsl:value-of select="node()"/>
        </p>
    </xsl:template>
    <xsl:template match="creditos" mode="rojo">
        <p style="color:red">
            <xsl:text>Creditos: </xsl:text>
            <xsl:value-of select="node()"/>
        </p>
    </xsl:template>
</xsl:stylesheet>