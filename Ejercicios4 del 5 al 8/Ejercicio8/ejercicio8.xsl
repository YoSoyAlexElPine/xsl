<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="horario">
    <html>
      <body>
        <h1>Lista de tareas</h1>
        <xsl:apply-templates select="dia"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="dia">
    <xsl:choose>
      <xsl:when test="numdia = 1">
        <p>Lunes</p>
      </xsl:when>
      <xsl:when test="numdia = 2">
        <p>Martes</p>
      </xsl:when>
      <xsl:when test="numdia = 3">
        <p>Miercoles</p>
      </xsl:when>
      <xsl:when test="numdia = 4">
        <p>Jueves</p>
      </xsl:when>
      <xsl:when test="numdia = 5">
        <p>Viernes</p>
      </xsl:when>
      <xsl:otherwise>
        <p>Hola</p>
      </xsl:otherwise>
    </xsl:choose>

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
      <p>
        <xsl:text>Horario: </xsl:text>
        <xsl:choose>
          <xsl:when test="hora-ini &lt; 12 and hora-fin &lt; 12">
            <xsl:text>Mañana</xsl:text>
          </xsl:when>
          <xsl:when test="hora-ini &gt;= 12 and hora-fin &lt; 16">
            <xsl:text>Mediodía</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>Tarde</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
      </p>
    </li>
  </xsl:template>

</xsl:stylesheet>
