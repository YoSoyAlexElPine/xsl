<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="tienda">
        <html>
            <body>
             
                <xsl:variable name="tercerProducto" select="producto[3]"/>
                <p>Código del tercer producto: <xsl:value-of select="$tercerProducto/codigo"/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
