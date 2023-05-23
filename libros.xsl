<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h1>Lista de Libros</h1>
        <xsl:apply-templates select="libros/libro"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <p><strong>Nombre del Libro:</strong> <xsl:value-of select="titulo"/></p>
      <p><strong>Autor:</strong> <xsl:value-of select="autor"/></p>
      <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
