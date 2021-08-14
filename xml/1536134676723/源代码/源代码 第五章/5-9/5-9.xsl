<?xml version="1.0" encoding="gb2312"?>
<!--file name 5-8.xsl-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="学生列表">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="学生">
<xsl:apply-templates select="姓名"/>
<xsl:apply-templates select="年龄"/>
</xsl:template>
</xsl:stylesheet>
