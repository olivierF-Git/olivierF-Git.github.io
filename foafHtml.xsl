<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                            xmlns:clinic="http://www.infomed.co.il">
<xsl:output method='html' indent="yes"/>
    <xsl:template match="rdf:RDF/foaf:Person">
        <h2>Olivier FRANCOU informations</h2>
        <table border="1">
            <tr>
                <th>Nom Prénom</th>
                <th>Genre</th>
                <th>Prenom</th>
                <th>Nom de famille</th>
                <th>Surnom</th>
                <th>Mail hash</th>
                <th>Site personnel</th>
            </tr>    
            <tr>
                <td><xsl:value-of select="foaf:name"/></td>
                <td><xsl:value-of select="foaf:title"/></td>
                <td><xsl:value-of select="foaf:givenname"/></td>
                <td><xsl:value-of select="foaf:family_name"/></td>
                <td><xsl:value-of select="foaf:nick"/></td>
                <td><xsl:value-of select="foaf:mbox_sha1sum"/></td>
                <td><xsl:value-of select="foaf:homepage/@rdf:resource"/></td>
            </tr>
        </table>
        <xsl:text>&#013;</xsl:text>
    </xsl:template>
</xsl:stylesheet>