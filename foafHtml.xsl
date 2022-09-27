<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <body>
            <h2>Olivier FRANCOU</h2>
                <table border="1">
                    <tr >
                        <th>Nom Prenom</th>
                        <th>Genre</th>
                        <th>Prenom</th>
                        <th>Nom de famille</th>
                        <th>Surnom</th>
                        <th>Numéro de télephone</th>
                        <th>Mail hash</th>
                        <th>Site personnel</th>
                        <th>Site de l'ecole</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="rdf:RDF/Person/foaf:name"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:title"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:givenname"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:family_name"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:nick"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:phone"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:mbox_sha1sum"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/></td>
                        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:schoolHomepage/@rdf:resource"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>