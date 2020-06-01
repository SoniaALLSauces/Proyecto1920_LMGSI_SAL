<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 05atributos.xsl
    Created on : 14 de mayo de 2020, 13:10
    Author     : Sonia
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <!-- atributo global, lo puedo llamar desde cualquier sitio del documento  -->
    <xsl:attribute-set name="bordesSencillos">
        <xsl:attribute name="border">1px solid black</xsl:attribute>
    </xsl:attribute-set>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/garaje">
        <html>
            <head>
                <title>05atributos.xsl</title>
            </head>
            <body>
                <xsl:element name="table" use-attribute-sets="bordesSencillos">
                    <xsl:apply-templates select="//coches/coche/matricula">
                        <xsl:sort/>
                    </xsl:apply-templates>
                </xsl:element>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="matricula">
        <tr>
            <xsl:element name="td" use-attribute-sets="bordesSencillos">
                <xsl:value-of select="current()"/>
            </xsl:element>    
        </tr>
    </xsl:template>
    
    

</xsl:stylesheet>
