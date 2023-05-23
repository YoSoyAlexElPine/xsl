<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="tienda">
        <html>
            <body>
                <xsl:variable name="telefonoTienda" select="telefono"/>
                <h1><xsl:value-of select="nombre"/></h1>
                <p>Teléfono: <xsl:value-of select="$telefonoTienda"/></p>
                <ul>
                    <xsl:apply-templates select="producto">
                        <xsl:with-param name="telefonoTienda" select="$telefonoTienda"/>
                    </xsl:apply-templates>
                </ul>
                <p>Total de productos: <xsl:value-of select="count(producto)"/></p>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="producto">
        <xsl:param name="telefonoTienda"/>
        <li>
            <xsl:value-of select="concat(articulo, ' - ')"/>
            <xsl:choose>
                <xsl:when test="cantidad &gt; 10">
                    <xsl:call-template name="mostrar-cantidad">
                        <xsl:with-param name="cantidad" select="cantidad"/>
                        <xsl:with-param name="mode" select="'rojo'"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="mostrar-cantidad">
                        <xsl:with-param name="cantidad" select="cantidad"/>
                        <xsl:with-param name="mode" select="'verde'"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </li>
        <li>
            <xsl:text>Teléfono de la tienda: </xsl:text>
            <xsl:value-of select="$telefonoTienda"/>
        </li>
    </xsl:template>

    <xsl:template name="mostrar-cantidad">
        <xsl:param name="cantidad"/>
        <xsl:param name="mode"/>
        <xsl:choose>
            <xsl:when test="$mode = 'rojo'">
                <span style="color: red"><xsl:value-of select="$cantidad"/></span>
            </xsl:when>
            <xsl:otherwise>
                <span style="color: green"><xsl:value-of select="$cantidad"/></span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
