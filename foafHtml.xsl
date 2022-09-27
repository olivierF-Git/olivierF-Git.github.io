<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                            xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
                            xmlns:clinic="http://www.infomed.co.il">
<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>
<xsl:template match="rdf:RDF/foaf:Person">
<h2>
  nom: <xsl:value-of select="foaf:name" />
</h2>
<h2>
    genre: <xsl:value-of select="foaf:title" />
</h2>
<h2>
    nom prenom: <xsl:value-of select="foaf:givenname" />
</h2>
<h2>
    nom de famille: <xsl:value-of select="foaf:family_name" />
</h2>
<h2>
  Mail hash: <xsl:value-of select="foaf:mbox_sha1sum" />
</h2>
<br />
<xsl:text>&#013;</xsl:text>
</xsl:template>
</xsl:stylesheet>