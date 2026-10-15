<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
    
    <xsl:param name="day" select="''"/>
    <xsl:param name="venueId" select="''"/>
    <xsl:param name="page" select="1"/>
    <xsl:param name="pageSize" select="10"/>
    
    <xsl:template match="/festival">
        <xsl:variable name="filteredEvents" select="programme/event[($day = '' or @date = $day) and ($venueId = '' or @venueRef = $venueId)]"/>
        
        <xsl:variable name="startIdx" select="($page - 1) * $pageSize + 1"/>
        <xsl:variable name="endIdx" select="$page * $pageSize"/>
        
        {
        "meta": {
            "totalCount": <xsl:value-of select="count($filteredEvents)"/>,
            "page": <xsl:value-of select="$page"/>,
            "pageSize": <xsl:value-of select="$pageSize"/>,
            "totalPages": <xsl:value-of select="ceiling(count($filteredEvents) div $pageSize)"/>
        },
        "events": [
            <xsl:for-each select="$filteredEvents">
                <xsl:if test="position() &gt;= $startIdx and position() &lt;= $endIdx">
                    {
                        "id": "<xsl:value-of select='@id'/>",
                        "title": "<xsl:value-of select='title'/>",
                        "date": "<xsl:value-of select='@date'/>",
                        "venueId": "<xsl:value-of select='@venueRef'/>",
                        "time": "<xsl:value-of select='start'/> - <xsl:value-of select='end'/>"
                    }<xsl:if test="position() != $endIdx and position() != last()">,</xsl:if>
                </xsl:if>
            </xsl:for-each>
        ]
        }
    </xsl:template>
</xsl:stylesheet>