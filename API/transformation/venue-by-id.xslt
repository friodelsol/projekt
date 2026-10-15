<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
    <xsl:param name="venueId" select="'v1'"/>
    
    <xsl:template match="/festival">
        <xsl:for-each select="venues/venue[@id=$venueId]">
            {
                "id": "<xsl:value-of select='@id'/>",
                "name": "<xsl:value-of select='name'/>",
                "type": "<xsl:value-of select='type'/>",
                "capacity": <xsl:value-of select='capacity'/>,
                "area": "<xsl:value-of select='area'/>",
                "location": {
                    "city": "<xsl:value-of select='address/city'/>",
                    "postalCode": "<xsl:value-of select='address/postalCode'/>",
                    "country": "<xsl:value-of select='address/country'/>"
                },
                "facilities": [
                    <xsl:for-each select="facilities/facility">
                        "<xsl:value-of select="."/>"<xsl:if test="position() != last()">,</xsl:if>
                    </xsl:for-each>
                ]
            }
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>