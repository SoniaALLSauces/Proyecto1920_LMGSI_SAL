<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 28 de abril de 2020, 11:49
    Author     : Sonia Antón Llanes
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/peliculas">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>XSLT 03 - Sonia Antón Llanes</title>
                <link href="estilo.css" rel="stylesheet" type="text/css" />
                <link rel="icon" href="../../icon/icono.png" type="image/x-icon" />
            </head>
            <body>
                <header>
                    <h1>Información de Películas</h1>
                </header>
                <section>
                    <xsl:for-each select="pelicula">
                        <xsl:sort select="publico" data-type="text"/>
                        <xsl:sort select="valoracion/@puntos" data-type="number" order="descending"/>
                        <xsl:sort select="nombre" data-type="text"/>
                            <article>
                                <div class="titulo"><xsl:value-of select="nombre"/></div>
                                <div>Puntuación:
                                    <xsl:choose>
                                        <xsl:when test="valoracion/@puntos&lt;5">***</xsl:when>
                                        <xsl:when test="valoracion/@puntos&gt;=5 and valoracion/@puntos&lt;7">*****</xsl:when>
                                        <xsl:otherwise>*******</xsl:otherwise>
                                    </xsl:choose>
                                </div>
                                <div>Dirigida a: <xsl:value-of select="publico"/></div>
                            </article>
                    </xsl:for-each>
                </section>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
