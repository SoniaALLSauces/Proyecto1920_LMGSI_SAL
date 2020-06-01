<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 16 de mayo de 2020, 12:05:43
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
    <xsl:template match="/garaje">
        <xsl:call-template name="doctype"/>
        <xsl:apply-templates select="comment()"/>
        <html>
            <head>
                <title>XSLT 05 - Sonia Antón Llanes</title>
                <xsl:call-template name="miHead"/>
            </head>
            <body>
                <h1>XSLT 05 Informacion de Garajes</h1>
                <table>
                    <xsl:for-each select="coches/coche">
                        <thead>
                            <th>Coches</th>
                            <th>Reparaciones</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <p>Matricula <xsl:value-of select="matricula"/></p>
                                    <xsl:if test="marca='Seat'">
                                        <img src="images/Seat.jpg" alt="Seat" width="80px"/>
                                    </xsl:if>
                                    <xsl:if test="marca='Volkswagen'">
                                        <img src="images/Volkswagen.jpg" alt="Seat" width="80px"/>
                                    </xsl:if>
                                    <xsl:if test="marca='Renault'">
                                        <img src="images/Renault.jpg" alt="Seat" width="80px"/>
                                    </xsl:if>
                                    <xsl:if test="marca='Ford'">
                                        <img src="images/Ford.jpg" alt="Seat" width="80px"/>
                                    </xsl:if>
                                </td>
                                <td>Código: <xsl:value-of select="//reparacion/@codigo"/></td>
                            </tr>
                            <tr>
                                
                            </tr>
                        </tbody>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
