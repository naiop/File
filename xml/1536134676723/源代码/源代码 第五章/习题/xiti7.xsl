<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<!-- File Name:xiti7.xsl -->
<xsl:template match="/">
  <html>
   <head>
     <title>2015�����������ϵѧ��</title>
   </head>
   <body>
      <h3 align="center">2015�����������ϵѧ����Ϣ</h3>
	 <xsl:apply-templates select="roster"/>1
   </body>
  </html>
</xsl:template>
<xsl:template match="roster">
  <table border="1" bgcolor="#4EB7DE" align="center">
    <tr>
	  <th>ѧ��</th><th>����</th>
	  <th>�Ա�</th><th>����</th><th>��ѧ�ɼ�</th>
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


