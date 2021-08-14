<?xml version="1.0" encoding="gb2312" ?>
<!--students.xsl -->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <h4>年龄小于20岁的学生名单</h4>
    <xsl:for-each select="students/student[age &lt; 20]">
      <xsl:value-of select="@name" /> <xsl:value-of select="@id" /> <br/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>