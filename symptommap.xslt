<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match ="/">
        <Diseases>
            <xsl:apply-templates select ="//Disease"/>
        </Diseases>
    </xsl:template>

    <xsl:template match ="//Disease">
        <Disease>
            <xsl:attribute name="DiseaseName">
                <xsl:value-of select="DiseaseName"/>
            </xsl:attribute>
            
            <xsl:attribute name="symptom">
                <xsl:value-of select="symptom"/>
            </xsl:attribute>
        </Disease>
    </xsl:template>
</xsl:stylesheet>
