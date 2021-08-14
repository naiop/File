<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<!-- File Name:shixun2.xsl -->
<xsl:template match="/">
   <xsl:for-each select="唐诗/七言绝句">
    <center>
	<b><xsl:value-of select="标题"/></b>
	<xsl:value-of select="作者"/><br/>
	<xsl:for-each select="诗文/节">
	  <xsl:value-of /><br/>
	</xsl:for-each><hr/>
	</center>
   </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>