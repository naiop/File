<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
	<h3 align="center">2005������ϵѧ����Ϣ</h3><hr/>
	
		<xsl:for-each select="roster/student">
	        <span>ѧ�ţ�</span>
			<span><xsl:value-of select="SN"/></span><br/>
			<span>������</span>
			<span><xsl:value-of select="name"/></span><br/>
			<span>�Ա�</span>
			<span><xsl:value-of select="sex"/></span><br/>
			<span>���գ�</span>
			<span><xsl:value-of select="birthday"/></span><br/>
            <span>�ɼ���</span>
			<span><xsl:value-of select="score"/></span><br/><hr/>
		</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
