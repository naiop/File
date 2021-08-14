<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html>
<head>
<title>第一个 XSLT 实例</title>
</head>
<body>
<p><xsl:value-of select="greeting"/></p>
</body>
</html>
</xsl:template>
</xsl:stylesheet>