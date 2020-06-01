<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04EX.xsl
    Created on : 7 de mayo de 2020, 12:22
    Author     : Sonia
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Importo plantilla comun a todos los documentos xsl
        doctype, comentarios y head  -->
    <xsl:import href="comun.xsl"/>
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/manual">
        <!--  Llamo a la plantilla doctype creada en comun.xsl -->
        <xsl:call-template name="doctype"/>
        <!--  Llamo a la plantilla comentarios creada en comun.xsl -->
        <xsl:apply-templates select="comment()"/>
        
        <html>
            <head>
                <title>SoniaALl: Servidor Web de Ubuntu</title>
                <!--  Llamo a la plantilla miHead creada en comun.xsl -->
                <xsl:call-template name="miHead"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="@codigo "/>
                        <!-- Creo un span para separar el codigo y titulo -->
                        <span></span> 
                        <xsl:value-of select="titulo"/>
                    </h1>
                </header>
                <main>
                    <h4><xsl:value-of select="subtitulo"/></h4>
                    <!-- Creo dos secciones: una para los datos generales o otra para los pasos -->
                    <section>
                        <p><span>Date created/update: </span><xsl:value-of select="fechaCreacion"/></p>
                        <p><span>Sistema Operativo: </span><xsl:value-of select="sistema"/><xsl:value-of select="sistema/@version"/></p>
                        <p><span>Arquitectura: </span><xsl:value-of select="sistema/@tipo"/></p>
                        <p><span>Documentación: </span>
                            <!-- Mediante un for-each recorremos las url -->
                            <ul><xsl:for-each select="url">
                                <li><xsl:value-of select="text()"/></li>
                            </xsl:for-each></ul>
                        </p>
                    </section>
                    
                    <section>
                        <p class="pasos">Pasos a seguir</p>
                        <!-- Mediante un for-each recorremos todos los pasos -->
                        <xsl:for-each select="paso">
                            <article>
                                <p>
                                    <span class="PNum"><xsl:value-of select="@id"/></span>
                                     Paso <!-- No consigo poner la posicion <xsl:position()/> -->
                                </p>
                                <p class="sudo"><xsl:value-of select="comando"/></p>
                                <p><xsl:value-of select="descripcion"/></p>
                            </article>
                        </xsl:for-each>
                    </section>
                 </main>   
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
