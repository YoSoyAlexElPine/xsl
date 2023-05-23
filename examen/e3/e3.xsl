<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="catalog">
        <html>
            <body>
                <ul>
                    <xsl:apply-templates select="cd[year &gt; 1989]" />
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="cd">
        <xsl:text>- Titulo: </xsl:text><xsl:value-of select="title" />
         <xsl:text>anio: </xsl:text><xsl:value-of select="year" /><br></br>
    </xsl:template>

</xsl:stylesheet> 