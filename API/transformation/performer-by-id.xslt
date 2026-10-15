<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
    <xsl:param name="perfId" select="'p001'"/>
    <xsl:template match="/festival">
        <xsl:for-each select="performers/performer[@id=$perfId]">
            {
                "id": "<xsl:value-of select='@id'/>",
                "name": "<xsl:value-of select='name'/>",
                "country": "<xsl:value-of select='country'/>",
                "tags": [
                    <xsl:for-each select="tags/tag">
                        "<xsl:value-of select="."/>"<xsl:if test="position() != last()">,</xsl:if>
                    </xsl:for-each>
                ]
            }
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>