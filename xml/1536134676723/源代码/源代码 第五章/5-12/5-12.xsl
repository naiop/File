<?xml version="1.0" encoding="GB2312"?>
<!--file name:5-11.xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
   <html>
    <head>
	 <title>xsl:for-eachʵ��</title>
	</head>
	<body>
	  <xsl:apply-templates/>
	</body>
   </html>
   <h3 align="center">�༶ѧ�������仯һ����</h3>
   <hr/>
   <xsl:for-each select="ѧ����Ϣ/ѧ��" order-by="-�ܷ�">
     <span style="font-style:italic">������</span>
	 <xsl:value-of select="����"/><br/>
     <span style="font-style:italic">�ܷ֣�</span>
	 <xsl:value-of select="�ܷ�"/><br/>
     <span style="font-style:italic">������</span>
	 <xsl:value-of select="����"/><br/>
	 <span style="font-style:italic">�仯��</span>
	 <xsl:if test="./����[@��]">
	   <font color="red">����<xsl:value-of select="*/@��"/>��
	   </font>
	   <hr/>
	 </xsl:if>
	 <xsl:if test="./����[@��]">
	   <font color="green">�½�<xsl:value-of select="*/@��"/>��
	   </font>
	   <hr/>
	 </xsl:if>	
   </xsl:for-each>
</xsl:template>
</xsl:stylesheet>   