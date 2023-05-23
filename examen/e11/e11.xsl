<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="tienda">
        <html>
            <body>
                <h1><xsl:value-of select="nombre"/></h1>
                <p>Teléfono: <xsl:value-of select="telefono"/></p>
                <xsl:call-template name="mostrar-productos">
                    <xsl:with-param name="productos" select="producto"/>
                </xsl:call-template>
                <p>Total de productos: <xsl:value-of select="count(producto)"/></p>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="mostrar-productos">
        <xsl:param name="productos"/>
        <xsl:for-each select="$productos">
            <p><xsl:value-of select="articulo"/></p>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
