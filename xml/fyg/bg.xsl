<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>图书列表</TITLE>
<STYLE>
body{text-align:center;}
.title{font-size:25pt;color:#000000}

</STYLE>
</HEAD>

<BODY>
<P Class="title">图书信息表 </P>
<TABLE BORDER="4">
<thead>
<TD>图书类别</TD>
<TD>书目编号</TD>
<TD>书名</TD>
<TD>价格</TD>
<TD>出版社名称</TD>
</thead>
<xsl:for-each select="图书信息/图书">
<TR>
<TD><xsl:value-of select="图书类别"/></TD>
<TD><xsl:value-of select="书目编号"/></TD>
<TD><xsl:value-of select="书名"/></TD>
<TD><xsl:value-of select="价格"/></TD>
<TD><xsl:value-of select="出版社名称"/></TD>
</TR>
</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>