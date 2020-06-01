<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : horoscopos.xsl
    Created on : 1 de junio de 2020, 12:38
    Author     : Sonia Antón Llanes
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/horoscope">
        <html>
            <head>
                <title>Horoscopos - Sonia Antón Llanes</title>
                <meta charset="utf-8"/>
                <link rel="icon" type="image/x-icon" href="../favicon.jpg"/>
                <link rel="stylesheet" type="text/css" href="../../css/estilos-horoscopo.css"/>
            </head>
            <body>
                <main>
                    <div>
                        <xsl:choose>
                            <xsl:when test="sign/@id=1">
                                <img src="../../images/1.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-1.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=2">
                                <img src="../../images/2.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-2.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=3">
                                <img src="../../images/3.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-3.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=4">
                                <img src="../../images/4.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-4.jpg" alt="background"/>
                            </xsl:when><xsl:when test="sign/@id=5">
                                <img src="../../images/5.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-5.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=6">
                                <img src="../../images/6.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-6.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=7">
                                <img src="../../images/7.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-7.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=8">
                                <img src="../../images/8.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-8.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=9">
                                <img src="../../images/9.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-9.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=10">
                                <img src="../../images/10.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-10.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:when test="sign/@id=11">
                                <img src="../../images/11.svg" alt="horoscopo"/> 
                                <img class="bg" src="../../images/bg-11.jpg" alt="background"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <img src="../../images/12.svg" alt="horoscopo"/>
                                <img class="bg" src="../../images/bg-12.jpg" alt="background"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>    
                    <h1>HORÓSCOPO
                        <xsl:if test="sign/@id=document('../signos.xml')//signo/@id">
                            <xsl:value-of select="document('../signos.xml')//signo[@id=//sign/@id]/nombre"/>
                        </xsl:if>
                    </h1>
                    <h4>Predicción para hoy <xsl:value-of select="date"/></h4>
                    <p><xsl:value-of select="sign/message"/></p>    
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>