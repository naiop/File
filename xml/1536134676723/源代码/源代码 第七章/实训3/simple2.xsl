<?xml version="1.0" encoding="gb2312" ?>
<!--simple2.xsl-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/students">
   女学生姓名如下：<br/>
    <xsl:for-each select="student[starts-with(sex,'女')]">
      <xsl:value-of select="name"/> <xsl:value-of select="birthday"/><br/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
