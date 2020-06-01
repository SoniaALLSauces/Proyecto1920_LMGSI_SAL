<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : signos.xsl
    Created on : 31 de mayo de 2020, 20:58
    Author     : Sonia Anton Llanes
    Description:
        Mostrar horoscopo / los signos del zodiaco
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/horoscopo">
        <html>
            <head>
                <title>Horoscopos - Sonia Antón Llanes</title>
                <meta charset="utf-8"/>
                <link rel="icon" type="image/x-icon" href="favicon.jpg"/>
                <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
            </head>
            <body>
                <header>
                    <h1>HORÓSCOPO / SIGNOS DEL ZODIACO</h1>
                </header>
                <main>
                    <xsl:for-each select="signo">
                        <div>
                            <xsl:choose>
                                <xsl:when test="@id=1">
                                    <a href="horoscopo/ARIES/horoscopo.html">
                                        <img src="images/1.svg" alt="horoscopo" title="Consulta el horóscopo de ARIES"/> 
                                        <img class="bg" src="images/bg-1.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=2">
                                    <a href="horoscopo/TAURO/horoscopo.html">
                                        <img src="images/2.svg" alt="horoscopo" title="Consulta el horóscopo de TAURO"/> 
                                        <img class="bg" src="images/bg-2.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=3">
                                    <a href="horoscopo/GEMENIS/horoscopo.html">
                                        <img src="images/3.svg" alt="horoscopo" title="Consulta el horóscopo de GEMINIS"/> 
                                        <img class="bg" src="images/bg-3.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=4">
                                    <a href="horoscopo/CANCER/horoscopo.html">
                                        <img src="images/4.svg" alt="horoscopo" title="Consulta el horóscopo de CÁNCER"/> 
                                        <img class="bg" src="images/bg-4.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=5">
                                    <a href="horoscopo/LEO/horoscopo.html">
                                        <img src="images/5.svg" alt="horoscopo" title="Consulta el horóscopo de LEO"/> 
                                        <img class="bg" src="images/bg-5.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=6">
                                    <a href="horoscopo/VIRGO/horoscopo.html">
                                        <img src="images/6.svg" alt="horoscopo" title="Consulta el horóscopo de VIRGO"/> 
                                        <img class="bg" src="images/bg-6.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=7">
                                    <a href="horoscopo/LIBRA/horoscopo.html">
                                        <img src="images/7.svg" alt="horoscopo" title="Consulta el horóscopo de LIBRA"/> 
                                        <img class="bg" src="images/bg-7.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=8">
                                    <a href="horoscopo/ESCORPIO/horoscopo.html">
                                        <img src="images/8.svg" alt="horoscopo" title="Consulta el horóscopo de ESCORPIO"/> 
                                        <img class="bg" src="images/bg-8.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=9">
                                    <a href="horoscopo/SAGITARIO/horoscopo.html">
                                        <img src="images/9.svg" alt="horoscopo" title="Consulta el horóscopo de SAGITARIO"/> 
                                        <img class="bg" src="images/bg-9.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=10">
                                    <a href="horoscopo/CAPRICORNIO/horoscopo.html">
                                        <img src="images/10.svg" alt="horoscopo" title="Consulta el horóscopo de CAPRICONIO"/> 
                                        <img class="bg" src="images/bg-10.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="@id=11">
                                    <a href="horoscopo/ACUARIO/horoscopo.html">
                                        <img src="images/11.svg" alt="horoscopo" title="Consulta el horóscopo de ACUARIO"/> 
                                        <img class="bg" src="images/bg-11.jpg" alt="background"/>
                                    </a>
                                </xsl:when>
                                <xsl:otherwise>
                                    <a href="horoscopo/PISCIS/horoscopo.html">
                                        <img src="images/12.svg" alt="horoscopo" title="Consulta el horóscopo de PISCIS"/>
                                        <img class="bg" src="images/bg-12.jpg" alt="background"/>
                                    </a>
                                </xsl:otherwise>
                            </xsl:choose>
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p><xsl:value-of select="fecha"/></p>
                        </div>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
