<?xml version="1.0" encoding="gb2312"?>
<!--file name:5-9.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html>
<head>
<title>xsl:ifʵ��</title>
</head>
<body>
<xsl:apply-templates select="ѧ����Ϣ/ѧ��/*"/>
</body>
</html>
</xsl:template>
<xsl:template match="ѧ����Ϣ/ѧ��/����">
<h2><font color="red">
<xsl:value-of select="."/>
</font></h2>
</xsl:template>
<xsl:template match="ѧ����Ϣ/ѧ��/�ܷ�">
�ܷ֣�
<font size="4">
<xsl:value-of select="."/>
</font>
</xsl:template>
<xsl:template match="ѧ����Ϣ/ѧ��/����">
<xsl:if test=".[@��]">
������
<font color="blue">
<xsl:value-of select="."/>
</font><sup>��<xsl:value-of select="./@��"/>��</sup>
<xsl:if test=".[@�� $ge$ 3]">
<font color="teal" size="4">������������3λ�������Ŭ����
</font>
</xsl:if>
</xsl:if>
<xsl:if test=".[@��]">
������
<font color="green">
<xsl:value-of select="."/>
</font><sub>��<xsl:value-of select="./@��"/>��</sub>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
