<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
    <xsl:template match="/festival">
        {
            "id": "<xsl:value-of select='@id'/>",
            "year": <xsl:value-of select='@year'/>,
            "name": "<xsl:value-of select='identity/name'/>",
            "edition": <xsl:value-of select='identity/edition'/>,
            "location": {
                "city": "<xsl:value-of select='identity/location/city'/>",
                "country": "<xsl:value-of select='identity/location/country'/>"
            },
            "dates": {
                "start": "<xsl:value-of select='identity/dates/@start'/>",
                "end": "<xsl:value-of select='identity/dates/@end'/>",
                "days": <xsl:value-of select='identity/dates/@days'/>
            },
            "theme": "<xsl:value-of select='identity/theme'/>",
            "description": "<xsl:value-of select='normalize-space(identity/description)'/>",
            "tickets": {
                "standard": "<xsl:value-of select='identity/tickets/standard'/>",
                "vip": "<xsl:value-of select='identity/tickets/vip'/>",
                "earlyBird": "<xsl:value-of select='identity/tickets/earlyBird'/>"
            },
            "links": [
                <xsl:for-each select="identity/links/link">
                    "<xsl:value-of select="."/>"<xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
            ]
        }
    </xsl:template>
</xsl:stylesheet>