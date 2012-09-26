<?xml version="1.0" encoding="UTF-8"?>
<!--
     XSLT for GBIFResponse to CSV format

     Maps GBIFResponse elements to CSV header elements,
     TaxonConcept : http://rs.tdwg.org/ontology/voc/TaxonConcept
     TaxonOccurrence : http://rs.tdwg.org/ontology/voc/TaxonOccurrence
     TaxonName : http://rs.tdwg.org/ontology/voc/TaxonName 

     To be used to generate input test cases for the Taxonomy Data Cleaning Workflow 
     -->

<xsl:stylesheet version="1.0"    
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
  xmlns:tax="http://rs.tdwg.org/ontology/voc/TaxonOccurrence#" 
  xmlns:tax1="http://rs.tdwg.org/ontology/voc/TaxonConcept#" 
  xmlns:tax2="http://rs.tdwg.org/ontology/voc/TaxonName#"
  xmlns:gbif="http://portal.gbif.org/ws/response/gbif">
  <xsl:output method="text"/>

  <xsl:variable name="newline">
    <xsl:text>&#xa;</xsl:text>
  </xsl:variable>

  <xsl:variable name="singlespace">
    <xsl:text> </xsl:text>
  </xsl:variable>

  <xsl:template match="/"> 
  <xsl:apply-templates select="//tax:TaxonOccurrence"/>        
</xsl:template>

<xsl:template match="tax:TaxonOccurrence">    
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:TaxonName/tax2:authorship"/>         
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:genusPart"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:infragenericEpithet"/>    
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:specificEpithet"/>     
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:infraspecificEpithet"/>    
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:nameComplete"/>    
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/tax1:hasName/tax2:TaxonName/tax2:uninomial"/>    
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxonName"/>     
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:identifiedTo/tax:Identification/tax:taxon/tax1:TaxonConcept/@gbifKey"/>     
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:decimalLatitude"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:decimalLongitude"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:earliestDateCollected"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:latestDateCollected"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:coordinateUncertaintyInMeters"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:country"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:collector"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:fieldNotes"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:locality"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:maximumDepthInMeters"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:maximumElevationInMeters"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:minimumDepthInMeters"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:minimumElevationInMeters"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="tax:value"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="../../../../gbif:name"/> 
<xsl:text>,</xsl:text>
<xsl:apply-templates select="../../gbif:name"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="../../gbif:rights"/>
<xsl:text>,</xsl:text>
<xsl:apply-templates select="../../gbif:citation"/>
<xsl:value-of select="$newline"/>   
</xsl:template>

</xsl:stylesheet>
