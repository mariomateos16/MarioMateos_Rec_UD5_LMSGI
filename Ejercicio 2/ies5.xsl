<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <p>Nombre y Apellido: Mario Mateos </p>
        <h1><xsl:value-of select="ies/@nombre"/></h1>
            <table border="1">
                <tr>
                <th>Nombre</th>
                <th>Año</th>
                </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <xsl:choose>
                            <xsl:when test="decretoTitulo/@año &gt; 2009">
                                <td style="color:#00FF00">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año &lt; 2009">
                                <td style="color:#FF0000">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año =2009">
                                <td style="color:#0000FF">
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </xsl:when>
                        </xsl:choose>
                    </tr>
            </xsl:for-each>
        </table>
        </xsl:template>
</xsl:stylesheet>