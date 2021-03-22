<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <style>
                    .cursiva { font-style: italic; }
                    .rojo { color: red; }
            </style>
        </head>
        <body>
            Nombre y Apellidos: Mario Mateos
            <table border="1">
                <tr>
                    <th>
                        Título
                    </th>
                    <th>
                        Autor/es
                    </th>
                    <th>
                        Editor/es
                    </th>
                </tr>
                <xsl:for-each select="//libro">
                <xsl:sort order="ascending" data-type="text" select="titulo"/>
                    <tr>
                        <xsl:choose>
                            <xsl:when test="precio &gt; 100">
                                <td class="rojo">
                                    <xsl:value-of select="titulo" /> (Caro)
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="titulo" />
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <td>
                            <xsl:for-each select="autor">
                                <xsl:value-of select="nombre" />
                                <xsl:text>&#32;</xsl:text>
                                <xsl:value-of select="apellido" />
                                <xsl:text>&#32;</xsl:text>
                            </xsl:for-each>
                        </td>
                        <td>
                            <xsl:for-each select="editor">
                                <xsl:value-of select="nombre" />
                                <xsl:text>&#32;</xsl:text>
                                <xsl:value-of select="apellido" />
                                <xsl:text>&#32;</xsl:text>
                                <xsl:value-of select="afiliacion" />
                                <xsl:text>&#32;</xsl:text>
                            </xsl:for-each>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>