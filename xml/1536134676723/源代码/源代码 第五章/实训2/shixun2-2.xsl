<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<!-- File Name:shixun2.xsl -->
<xsl:template match="/">
   <xsl:for-each select="��ʫ/���Ծ���">
    <center>
	<b><xsl:value-of select="����"/></b>
	<xsl:value-of select="����"/><br/>
	<xsl:for-each select="ʫ��/��">
	  <xsl:value-of /><br/>
	</xsl:for-each><hr/>
	</center>
   </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>