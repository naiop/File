<?xml version="1.0" encoding="gb2312"?>
<!--file name 5-8.xsl-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="ѧ���б�">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="ѧ��">
<xsl:apply-templates select="����"/>
<xsl:apply-templates select="����"/>
</xsl:template>
</xsl:stylesheet>
