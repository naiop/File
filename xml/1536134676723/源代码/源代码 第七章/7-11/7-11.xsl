<?xml version="1.0" encoding="gb2312"?>
<!--7-11.xsl-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    图书名称：<xsl:value-of select="books/book[@id=4]/name"/><br/>
    出版社：<xsl:value-of select="books/book[@id=4]/publisher"/>
  </xsl:template>
</xsl:stylesheet>