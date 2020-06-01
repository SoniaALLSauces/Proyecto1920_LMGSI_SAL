<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : pizzeria.xsl
    Created on : 26 de mayo de 2020, 10:52
    Author     : Sonia
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/menu">
        <html>
            <head>
                <title>Pizzeria.xsl</title>                
            </head>
            <body>
                <xsl:apply-templates select="">
                    <xsl:choose>
                        <xsl:when test=
                    </xsl:choose>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="menu">
        <xsl:for-each select="document(PizzeriaXml.xml)">
            <xsl:if test=""
        </xsl:for-each>   
    </xsl:template>
</xsl:stylesheet>
