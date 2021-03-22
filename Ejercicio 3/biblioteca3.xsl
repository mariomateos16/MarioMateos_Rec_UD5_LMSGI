<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <style>
                .cursiva { font-style: italic; }
                .rojo { background-color: red; }
                </style>
            </head>
            <body>
                Nombre y Apellidos: Mario Mateos
                <table border="1">
                    <xsl:for-each select="//libro">
                    <xsl:sort order="ascending" data-type="number" select="precio"/>
                        <tr>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <xsl:apply-templates select="titulo" />
                            <td class="cursiva">
                                <xsl:value-of select="./@año" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="titulo">
        <xsl:choose>
            <xsl:when test="../precio &gt; 100">
                <td class="rojo">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select="." />
                </td>
            </xsl:otherwise>
        </xsl:choose>
</xsl:template>
</xsl:stylesheet>