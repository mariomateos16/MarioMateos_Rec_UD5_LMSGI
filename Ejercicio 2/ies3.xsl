<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <p>Nombre y Apellidos: Mario Mateos</p>
        <ul>
        <xsl:for-each select="ies/ciclos/ciclo">
            <li><xsl:value-of select="nombre"/> ( <xsl:value-of select="grado"/> )</li>
        </xsl:for-each>
        </ul>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>