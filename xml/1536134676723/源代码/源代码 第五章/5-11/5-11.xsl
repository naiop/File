<?xml version="1.0" encoding="GB2312"?>
<!--file name:5-10.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
   <html>
    <head>
	 <title>xsl:choose实例</title>
	</head>
	<body>
	 <ul type="1">
	  <xsl:apply-templates select="学生信息/学生/*"/>
	 </ul>
	</body>
   </html>
</xsl:template>
  <xsl:template match="学生/*">
   <xsl:choose>
   <xsl:when test=".[@升 $ge$ 2]">
   <font style="color:red;font-size:30">
     <xsl:value-of select="../姓名"/>
	 <xsl:value-of select="../总分"/>
	 <xsl:value-of select="../排名"/>
	 排名上升了<xsl:value-of select="@升"/>名
   </font>
   </xsl:when>
   <xsl:when test=".[@降 $gt$ 2]">
   <font style="color:green;font-size:20">
     <xsl:value-of select="../姓名"/>
	 <xsl:value-of select="../总分"/>
	 <xsl:value-of select="../排名"/>
	 排名下降了<xsl:value-of select="@降"/>名
   </font>
   </xsl:when>
  <xsl:otherwise>
   <p></p>
  </xsl:otherwise>
  </xsl:choose>
 </xsl:template>
</xsl:stylesheet>