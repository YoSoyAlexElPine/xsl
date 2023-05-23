<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="catalog">
        <html>
            <body>
                <ul>
                    <xsl:variable name="year" select="1983" />
                    <xsl:apply-templates select="cd[year = $year]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="cd">
        <xsl:text>- Titulo: </xsl:text><xsl:value-of select="title" />
         <xsl:text>anio: </xsl:text><xsl:value-of select="year" /><br></br>
    </xsl:template>

</xsl:stylesheet> 