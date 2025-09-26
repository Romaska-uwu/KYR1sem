<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="body">
<html>
    <head>
        <title>Task1</title>
    </head>

    <body>
        <h2>Мои книги</h2>
        <table border="1">
                <tr bgcolor="lightblue">
                    <th>Author</th>
                    <th>Book</th>
                </tr>
            <xsl:for-each select="book">
            <xsl:sort select="author"/>
            <tr>
                <td><xsl:value-of select="author"/></td>
                <td><xsl:value-of select="name"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>