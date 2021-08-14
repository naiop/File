<?xml version="1.0" encoding="GB2312"?>
<!--file name:5-11.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
   <html>
    <head>
	 <title>xsl:for-each实例</title>
	</head>
	<body>
	  <xsl:apply-templates/>
	</body>
   </html>
   <h3 align="center">班级学生排名变化一览表</h3>
   <hr/>
   <xsl:for-each select="学生信息/学生" order-by="-总分">
     <span style="font-style:italic">姓名：</span>
	 <xsl:value-of select="姓名"/><br/>
     <span style="font-style:italic">总分：</span>
	 <xsl:value-of select="总分"/><br/>
     <span style="font-style:italic">排名：</span>
	 <xsl:value-of select="排名"/><br/>
	 <span style="font-style:italic">变化：</span>
	 <xsl:if test="./排名[@升]">
	   <font color="red">上升<xsl:value-of select="*/@升"/>名
	   </font>
	   <hr/>
	 </xsl:if>
	 <xsl:if test="./排名[@降]">
	   <font color="green">下降<xsl:value-of select="*/@降"/>名
	   </font>
	   <hr/>
	 </xsl:if>	
   </xsl:for-each>
</xsl:template>
</xsl:stylesheet>   