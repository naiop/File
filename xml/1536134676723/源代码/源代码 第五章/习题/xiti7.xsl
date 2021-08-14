<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<!-- File Name:xiti7.xsl -->
<xsl:template match="/">
  <html>
   <head>
     <title>2015级计算机工程系学生</title>
   </head>
   <body>
      <h3 align="center">2015级计算机工程系学生信息</h3>
	 <xsl:apply-templates select="roster"/>1
   </body>
  </html>
</xsl:template>
<xsl:template match="roster">
  <table border="1" bgcolor="#4EB7DE" align="center">
    <tr>
	  <th>学号</th><th>姓名</th>
	  <th>性别</th><th>生日</th><th>入学成绩</th>
	</tr>
	<xsl:apply-templates select="student"
	  order-by="-score"/>
  </table>
</xsl:template>
<xsl:template match="student">
    <tr align="center">
	  <td><xsl:value-of select="SN"/></td>
	  <td><xsl:value-of select="name"/></td>
	  <td><xsl:value-of select="sex"/></td>
	  <td><xsl:value-of select="birthday"/></td>
	  <td><xsl:value-of select="score"/></td>
	</tr>
</xsl:template>
</xsl:stylesheet>


