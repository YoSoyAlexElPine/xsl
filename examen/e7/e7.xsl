<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="catalog">
        <html>
            <body>
                <table border="1">
                    <tr bgcolor="green">
                        <td><xsl:text>Title</xsl:text></td>
                        <td><xsl:text>Artist</xsl:text></td>
                        <td><xsl:text>Year</xsl:text></td>
                    </tr>
                    <xsl:apply-templates select="cd">
                        <xsl:sort select="year" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </table>
            </body>
         </html>
    </xsl:template>
    <xsl:template match="cd">
            <tr>
             <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="artist"/></td>
               
            </tr>
            
    </xsl:template>
   
</xsl:stylesheet> 