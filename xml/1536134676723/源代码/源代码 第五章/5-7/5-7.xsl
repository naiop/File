<?xml version="1.0" encoding="GB2312"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>��վ���ﳵ</TITLE>
<STYLE>.title{font-size:15pt;font-weigt:bold;color:blue} .name{color:red}
</STYLE>
</HEAD>
<BODY>
<P Class="title">shopping cart contents </P>
<TABLE BORDER="1">
<thead>
<TD><B>���</B></TD>
<TD><B>����</B></TD>
<TD><B>�۸�</B></TD>
<TD><B>������</B></TD>
</thead>
<xsl:for-each select="shoppingCart/item" order-by="price">
<TR>
<TD><B><xsl:value-of select="itemNO"/></B></TD>
<TD><xsl:value-of select="itemName"/></TD>
<TD><xsl:value-of select="price"/></TD>
<TD><xsl:value-of select="publisher"/></TD>
</TR>
</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>