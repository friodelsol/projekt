<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
    <xsl:param name="eventId" select="'e001'"/>
    <xsl:template match="/festival">
        <xsl:for-each select="programme/event[@id=$eventId]">
            {
                "id": "<xsl:value-of select='@id'/>",
                "title": "<xsl:value-of select='title'/>",
                "date": "<xsl:value-of select='@date'/>",
                "start": "<xsl:value-of select='start'/>",
                "end": "<xsl:value-of select='end'/>",
                "venueId": "<xsl:value-of select='@venueRef'/>",
                "type": "<xsl:value-of select='type'/>",
                "performerRefs": [
                    <xsl:for-each select="performers/performerRef">
                        "<xsl:value-of select="@ref"/>"<xsl:if test="position() != last()">,</xsl:if>
                    </xsl:for-each>
                ]
            }
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>