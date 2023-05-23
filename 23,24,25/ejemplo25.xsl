<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="5.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="universidad">
    <html>
      <body>
        <xsl:import-table href="blah.html" name="sample">
          <xsl:fallback>
            <p>
              La hoja de estilos fallback.xsl intenta procesar el
              documento XML con un elemento &gt;xsl:import-table&lt; hipotético.
              Como este elemento no es compatible con la versión actual
              del analizador, el documento se procesa de manera alternativa con la secuencia
              de comandos del elemento de reserva.
            </p>
            <table border="1">
              <tr>
                <td>
                  <xsl:text>Celda1 </xsl:text>
                </td>
                <td>
                  <xsl:text>Celda2</xsl:text>
                </td>
              </tr>
            </table>
          </xsl:fallback>
        </xsl:import-table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
