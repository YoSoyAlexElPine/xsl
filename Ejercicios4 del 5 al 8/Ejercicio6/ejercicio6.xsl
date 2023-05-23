<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Lista de tareas</h1>
        <xsl:apply-templates select="horario/dia">
          <xsl:sort select="numdia" data-type="number"/>
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="dia">
    <p>Día <xsl:value-of select="numdia"/>
    </p>

    <ul>
      <xsl:apply-templates select="tarea"/>
    </ul>
  </xsl:template>

  <xsl:template match="tarea">
    <li>
      <p>
        <strong>
          <xsl:value-of select="nombre"/>
        </strong>
        <xsl:text> - Prioridad: </xsl:text>
        <xsl:value-of select="@prioridad"/>
      </p>
      <p>
        <xsl:text>De </xsl:text>
        <xsl:value-of select="hora-ini"/>
        <xsl:text> a </xsl:text>
        <xsl:value-of select="hora-fin"/>
      </p>
    </li>
  </xsl:template>
</xsl:stylesheet>
