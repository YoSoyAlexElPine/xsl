<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="tienda">
        <html>
            <body>
                <h1><xsl:value-of select="nombre"/></h1>
                <p>Teléfono: <xsl:value-of select="telefono"/></p>
                <xsl:apply-templates select="producto"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>
