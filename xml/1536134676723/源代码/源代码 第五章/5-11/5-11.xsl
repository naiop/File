<?xml version="1.0" encoding="GB2312"?>
<!--file name:5-10.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
   <html>
    <head>
	 <title>xsl:chooseʵ��</title>
	</head>
	<body>
	 <ul type="1">
	  <xsl:apply-templates select="ѧ����Ϣ/ѧ��/*"/>
	 </ul>
	</body>
   </html>
</xsl:template>
  <xsl:template match="ѧ��/*">
   <xsl:choose>
   <xsl:when test=".[@�� $ge$ 2]">
   <font style="color:red;font-size:30">
     <xsl:value-of select="../����"/>
	 <xsl:value-of select="../�ܷ�"/>
	 <xsl:value-of select="../����"/>
	 ����������<xsl:value-of select="@��"/>��
   </font>
   </xsl:when>
   <xsl:when test=".[@�� $gt$ 2]">
   <font style="color:green;font-size:20">
     <xsl:value-of select="../����"/>
	 <xsl:value-of select="../�ܷ�"/>
	 <xsl:value-of select="../����"/>
	 �����½���<xsl:value-of select="@��"/>��
   </font>
   </xsl:when>
  <xsl:otherwise>
   <p></p>
  </xsl:otherwise>
  </xsl:choose>
 </xsl:template>
</xsl:stylesheet>