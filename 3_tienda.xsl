<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/tienda">

    <html>
            <head>
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet" href="3_tienda.css"/>

            </head>

            <body>
            <header>
                <h1><xsl:value-of select="title"/></h1>
                <p><xsl:value-of select="descripcion"/></p>
            </header>

                <div id="container">

                    <xsl:for-each select="/tienda/lista_productos/producto">

                    <div class="producto">
                        <h2><xsl:value-of select="nombre_producto"/>:</h2>
                        
                        <p><xsl:value-of select="descripcion_producto"/></p>
                        <p><xsl:value-of select="precio"/></p>
                        


                    </div>
                    
                    </xsl:for-each>



                </div>


            </body>


    </html>




</xsl:template>


    

</xsl:stylesheet>