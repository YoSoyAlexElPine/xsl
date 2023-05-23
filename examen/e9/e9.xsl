<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="tienda">
        <html>
            <body>
                <h1><xsl:value-of select="nombre"/></h1>
                <p>Teléfono: <xsl:value-of select="telefono"/></p>
                <table border="1">
                    <tr bgcolor="green">
                        <td><xsl:text>Nombre del Producto</xsl:text></td>
                    </tr>
                    <xsl:apply-templates select="producto"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="articulo"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
