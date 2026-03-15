<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:variable name="car-brand">audi</xsl:variable>
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta charset="UTF-8"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <xsl:element name="link">
          <xsl:attribute name="rel">preconnect</xsl:attribute>
          <xsl:attribute name="href">https://fonts.gstatic.com</xsl:attribute>
          <xsl:attribute name="crossorigin"/>
        </xsl:element>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Audi</title>
      </head>
    </html>
    <body>
      <div id="header">
        <h1>
          <a href="index.html">The Car Directory</a>
        </h1>
      </div>
      <nav>
        <div class="nav-button">
          <a href="audi.html">
            <p>Audi</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="auto-vaz.html">
            <p>AutoVaz</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="bmw.html">
            <p>BMW</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="ferrari.html">
            <p>Ferrari</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="ford.html">
            <p>Ford</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="mercedes.html">
            <p>Mercedes</p>
          </a>
        </div>
        <div class="nav-button">
          <a href="porsche.html">
            <p>Porsche</p>
          </a>
        </div>
      </nav>
      <main class="car-main">
        <xsl:for-each select="//coche">
          <xsl:sort select=".//nombre/text()" data-type="text" order="ascending"/>
          <xsl:sort select=".//velocidad-max/text()" data-type="number" order="descending"/>
          <xsl:if test="contains(@marca, $car-brand)">
            <xsl:apply-templates select="."/>
          </xsl:if>
        </xsl:for-each>
      </main>
    </body>
  </xsl:template>
  <xsl:template match="coche">
    <div class="car-container">
      <div class="car-image">
        <xsl:for-each select=".//imagenes/img">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="./@url"/>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="./@alt"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </div>
      <div class="car-description">
        <p>
          <xsl:value-of select=".//descripcion"/>
        </p>
        <div>
          <h1>Ficha Técnica</h1>
          <table>
            <tr>
              <th>Masa</th>
              <td><xsl:value-of select=".//masa"/> kg</td>
            </tr>
            <tr>
              <th>Longitud</th>
              <td><xsl:value-of select=".//longitud"/> mm</td>
            </tr>
            <tr>
              <th>Ancho</th>
              <td><xsl:value-of select=".//ancho"/> mm</td>
            </tr>
            <tr>
              <th>Altura</th>
              <td><xsl:value-of select=".//altura"/> mm</td>
            </tr>
            <tr>
              <th>Velocidad Máxima</th>
              <td><xsl:value-of select=".//velocidad-max"/> km/h</td>
            </tr>
            <tr>
              <th>Tiempo de aceleración</th>
              <td>Acelera de 0 a 100 km/h en <xsl:value-of select=".//tiempo-aceleracion"/> segundos</td>
            </tr>
            <tr>
              <th>Consumo</th>
              <xsl:element name="td">
                <xsl:if test="number(.//consumo) &gt;= 12">
                  <xsl:attribute name="style">color: red;</xsl:attribute>
                </xsl:if>
                <xsl:value-of select=".//consumo"/>
                <xsl:text> l/100 km</xsl:text>
              </xsl:element>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
