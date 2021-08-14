<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>图书列表</TITLE>
<STYLE>
.title{font-size:25pt;font-weigt:bold;color:#000000}
.bj{background-color:#DCDCDC;text-align:center;}

</STYLE>
</HEAD>
<BODY>
<P Class="title">书目 </P>
<TABLE BORDER="4">
<thead class="bj">
<TD><B>图书号</B></TD>
<TD><B>书名</B></TD>
<TD><B>价格</B></TD>
<TD><B>作者</B></TD>
</thead>
<xsl:for-each select="图书信息/图书">
<TR>
<TD><xsl:value-of select="图书号"/></TD>
<TD><xsl:value-of select="书名"/></TD>
<TD><xsl:value-of select="价格"/></TD>
<TD><xsl:value-of select="作者"/></TD>
</TR>
</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>