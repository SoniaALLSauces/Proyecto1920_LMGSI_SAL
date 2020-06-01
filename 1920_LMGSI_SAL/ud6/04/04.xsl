<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 5 de mayo de 2020, 10:34
    Author     : Sonia
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="../comun.xsl"/>
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/actividades">
        <xsl:call-template name="doctype"/>
        <xsl:apply-templates select="comment()"/>
        <html>
            <head>
                <title>XSLT 04 - Sonia Antón Llanes</title>
                <xsl:call-template name="miHead"/>
            </head>
            <body>
                <header>
                    <h1>Información del Gimnasio</h1>
                </header>
                <main>
                    <section>
                        <h2>1. Elementos de las Actividades Infantiles</h2>
                        <ul>
                            <xsl:for-each select="actividad[@nivel='infantil']/*">
                                <li><xsl:value-of select="concat(name(),': ',.)"/></li>
                            </xsl:for-each>
                        </ul>
                    </section>
                    <section>
                        <h2>2. Nombre de las Actividades para Adultos</h2>
                    </section>
                </main>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
