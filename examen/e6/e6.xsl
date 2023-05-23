<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="catalog">
        <html>
            <body>
                <p>
                    <xsl:variable name="year" select="1983" />
                    <xsl:apply-templates select="cd[starts-with(title, 'P')]"/>
                </p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="cd">
        <xsl:text>- Titulo: </xsl:text><xsl:value-of select="title" />
    </xsl:template>

</xsl:stylesheet> 