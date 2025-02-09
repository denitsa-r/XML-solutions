<xsl:stylesheet version="1.0" xmlns:xsi="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <INVENTORY2>
        <xsl:for-each select="INVENTORY/ITEM">
            <xsl:choose>
                <xsl:when test="@PRICE &gt; 100">
                    <xsl:copy-of select=".">
                </xsl:when>
                <xsl:otherwise>
                    <ITEM_CONVERTED>
                    <xsl:for-each select="*">
                        <xsl:attribute name="{name()}">
                            <xsl:value-of  select="text()">
                        </xsl:attribute>
                    </xsl:for-each>
                    <xsl:for-each select="@">
                        <xsl:attribute name="{name()}">
                            <xsl:value-of  select=".">
                        </xsl:attribute>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        </INVENTORY2>
    </xsl:template>
</xsl:stylesheet>