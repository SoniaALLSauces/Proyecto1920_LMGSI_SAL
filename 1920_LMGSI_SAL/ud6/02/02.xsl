<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 21 de abril de 2020, 10:41
    Author     : Sonia Antón Llanes
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
<!-- Creación de la estructura de la página web -->
    <xsl:template match="/listatickets">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>XSLT 02 - Sonia Antón Llanes</title>
                <link href="estilo.css" rel="stylesheet" type="text/css" />
                <link rel="icon" href="../../icon/icono.png" type="image/x-icon" />
            </head>
            <body>
                <header>
                    <h1>Información de tickets</h1>
                </header>
                <section>
                    <h2>Listado de tickets</h2>
                    <xsl:for-each select="ticket">
                        <h3>Tickets: <xsl:value-of select="numero"/></h3>
                        <table>
                            <thead>
                                <tr>
                                    <th>Producto</th>
                                    <th>Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="producto">
                                    <tr>
                                        <td><xsl:value-of select="nombre"/></td>
                                        <td><xsl:value-of select="precio"/></td>
                                    </tr>
                                </xsl:for-each> 
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Total</th>
                                    <th><xsl:value-of select="total"/></th>
                                </tr>
                            </tfoot>
                            <caption>
                                Fecha del ticket <xsl:value-of select="fecha"/>
                            </caption>
                        </table>
                    </xsl:for-each>
                </section>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
