<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:decimal-format name="usa" decimal-separator='.' grouping-separator=',' />
    <xsl:decimal-format name="europa" decimal-separator=',' grouping-separator='.' />    
    <xsl:variable name="precioCreditos">20.29</xsl:variable>

      <xsl:variable name="converDolar">1.08</xsl:variable>
        <xsl:variable name="converYen">149.37</xsl:variable>

    <xsl:template match="universidad">
        <html>
            <body>
                <table border="1">
                    <tr bgcolor="green">
                        <td><xsl:text>Carrera: </xsl:text></td>
                        <td><xsl:text>Precio por defecto</xsl:text></td>
                        <td><xsl:text>Precio Europa</xsl:text></td>
                        <td><xsl:text>Precio USA</xsl:text></td>
                        <td><xsl:text>Precio Japon</xsl:text></td>
                    </tr>
                    <xsl:apply-templates select="carreras/carrera"/>
                </table>
            </body>
         </html>
    </xsl:template>
    <xsl:template match="carrera">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="creditos*$precioCreditos"/></td>
                <td><xsl:value-of select="format-number(creditos*$precioCreditos, '###.###,00;(###.###,00)', 'europa')"/></td>
                <td><xsl:value-of select="format-number(creditos*converDolar*$precioCreditos, '###.###,00000;(###.###,00000)', 'europa')"/></td>
                <td><xsl:value-of select="format-number(creditos*$precioCreditos*converYen, '###.###,00000;(###.###,00000)', 'europa')"/></td>
            </tr>
            
    </xsl:template>
   
</xsl:stylesheet> 