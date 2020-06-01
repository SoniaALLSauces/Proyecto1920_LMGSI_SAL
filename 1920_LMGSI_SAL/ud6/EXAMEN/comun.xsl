<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : comun.xsl
    Created on : 7 de mayo de 2020, 11:41
    Author     : Sonia
    Description:
        Plantilla comun a todos los xml
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    
    <xsl:template name="miHead">
        <meta charset="utf-8"/>
        <link href="estilo.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="../../icon/icono.png" type="image/x-icon" />
    </xsl:template>
    
    <xsl:template name="doctype">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
    </xsl:template>
    
    <xsl:template match="comment()">
        
        <xsl:text>
        </xsl:text>
        <xsl:comment><xsl:value-of select="."/></xsl:comment>
        <xsl:if test="position()=last()">
            <xsl:text>
                
            </xsl:text>
        </xsl:if>
        
    </xsl:template>
    
</xsl:stylesheet>
