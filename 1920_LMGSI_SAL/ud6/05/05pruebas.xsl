<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05.xsl
    Created on : 14 de mayo de 2020, 12:47
    Author     : Sonia
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/garaje">
        <html>
            <head>
                <title>05.xsl</title>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="coches/coche/matricula">
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                    <!-- OTRA FORMA  -->
                    <!-- current() es exactamente igual que el .  -->
                    <xsl:for-each select="coches/coche/matricula">
                        <li>
                            <xsl:value-of select="current()"/>
                        </li>
                    </xsl:for-each>    
                    <!-- OTRA FORMA  -->
                    <!-- con una plantilla, que tengo creada abajo  -->   
                    <xsl:apply-templates select="current()/coches/coche/matricula">
                        <!-- y ordenamos  -->
                        <xsl:sort />
                    </xsl:apply-templates>      
                </ul>
                <!-- AHORA QUIERO UNA TABLA  -->
                <table style="border:1px solid black;">
                    <tr>
                        <td>
                            <xsl:value-of select="current()/coches/coche/matricula"/>
                        </td>
                    </tr>
                </table>
        --        <!-- OTRA FORMA  -->
        --        <!-- con una plantilla, que tengo creada abajo  -->   
        --        <xsl:apply-templates select="current()/coches/coche/matricula">
        --            
        --                <xsl:sort />
        --        </xsl:apply-templates>
        
        
            </body>
        </html>
    </xsl:template>
    
    <!-- Plantilla para recorrer las matriculas de los coches  -->
    <!-- ni el current() ni el . lo puedo utilizar en el match de template  -->
    <xsl:template match="matricula">
        <li>
            <xsl:value-of select="current()"/>
        </li>
    </xsl:template>

</xsl:stylesheet>
