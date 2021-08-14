<?xml version="1.0" encoding="gb2312"?>
<!--file name:5-9.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html>
<head>
<title>xsl:if实例</title>
</head>
<body>
<xsl:apply-templates select="学生信息/学生/*"/>
</body>
</html>
</xsl:template>
<xsl:template match="学生信息/学生/姓名">
<h2><font color="red">
<xsl:value-of select="."/>
</font></h2>
</xsl:template>
<xsl:template match="学生信息/学生/总分">
总分：
<font size="4">
<xsl:value-of select="."/>
</font>
</xsl:template>
<xsl:template match="学生信息/学生/排名">
<xsl:if test=".[@升]">
排名：
<font color="blue">
<xsl:value-of select="."/>
</font><sup>升<xsl:value-of select="./@升"/>名</sup>
<xsl:if test=".[@升 $ge$ 3]">
<font color="teal" size="4">排名上升至少3位，请继续努力！
</font>
</xsl:if>
</xsl:if>
<xsl:if test=".[@降]">
排名：
<font color="green">
<xsl:value-of select="."/>
</font><sub>降<xsl:value-of select="./@降"/>名</sub>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
