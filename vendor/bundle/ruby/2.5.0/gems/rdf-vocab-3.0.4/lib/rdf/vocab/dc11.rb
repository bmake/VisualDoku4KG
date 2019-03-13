# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://purl.org/dc/elements/1.1/
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://purl.org/dc/elements/1.1/>
  #   class DC11 < RDF::StrictVocabulary
  #   end
  class DC11 < RDF::StrictVocabulary("http://purl.org/dc/elements/1.1/")

    # Ontology definition
    ontology :"http://purl.org/dc/elements/1.1/",
      "dc:modified": "2012-06-14".freeze,
      "dc:publisher": "http://purl.org/dc/aboutdcmi#DCMI".freeze,
      "dc:title": "Dublin Core Metadata Element Set, Version 1.1".freeze

    # Property definitions
    property :contributor,
      comment: %(An entity responsible for making contributions to the resource.).freeze,
      "dc:description": "Examples of a Contributor include a person, an organization, or a service. Typically, the name of a Contributor should be used to indicate the entity.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#contributor-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Contributor".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :coverage,
      comment: %(The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.).freeze,
      "dc:description": "Spatial topic and spatial applicability may be a named place or a location specified by its geographic coordinates. Temporal topic may be a named period, date, or date range. A jurisdiction may be a named administrative entity or a geographic place to which the resource applies. Recommended best practice is to use a controlled vocabulary such as the Thesaurus of Geographic Names [TGN]. Where appropriate, named places or time periods can be used in preference to numeric identifiers such as sets of coordinates or date ranges.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#coverage-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Coverage".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :creator,
      comment: %(An entity primarily responsible for making the resource.).freeze,
      "dc:description": "Examples of a Creator include a person, an organization, or a service. Typically, the name of a Creator should be used to indicate the entity.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#creator-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Creator".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :date,
      comment: %(A point or period of time associated with an event in the lifecycle of the resource.).freeze,
      "dc:description": "Date may be used to express temporal information at any level of granularity.  Recommended best practice is to use an encoding scheme, such as the W3CDTF profile of ISO 8601 [W3CDTF].".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#date-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Date".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :description,
      comment: %(An account of the resource.).freeze,
      "dc:description": "Description may include but is not limited to: an abstract, a table of contents, a graphical representation, or a free-text account of the resource.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#description-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Description".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :format,
      comment: %(The file format, physical medium, or dimensions of the resource.).freeze,
      "dc:description": "Examples of dimensions include size and duration. Recommended best practice is to use a controlled vocabulary such as the list of Internet Media Types [MIME].".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#format-007".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Format".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :identifier,
      comment: %(An unambiguous reference to the resource within a given context.).freeze,
      "dc:description": "Recommended best practice is to identify the resource by means of a string conforming to a formal identification system. ".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#identifier-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Identifier".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :language,
      comment: %(A language of the resource.).freeze,
      "dc:description": "Recommended best practice is to use a controlled vocabulary such as RFC 4646 [RFC4646].".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#language-007".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Language".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      "rdfs:seeAlso": "http://www.ietf.org/rfc/rfc4646.txt".freeze,
      type: "rdf:Property".freeze
    property :publisher,
      comment: %(An entity responsible for making the resource available.).freeze,
      "dc:description": "Examples of a Publisher include a person, an organization, or a service. Typically, the name of a Publisher should be used to indicate the entity.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#publisher-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Publisher".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :relation,
      comment: %(A related resource.).freeze,
      "dc:description": "Recommended best practice is to identify the related resource by means of a string conforming to a formal identification system. ".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#relation-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Relation".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :rights,
      comment: %(Information about rights held in and over the resource.).freeze,
      "dc:description": "Typically, rights information includes a statement about various property rights associated with the resource, including intellectual property rights.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#rights-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Rights".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :source,
      comment: %(A related resource from which the described resource is derived.).freeze,
      "dc:description": "The described resource may be derived from the related resource in whole or in part. Recommended best practice is to identify the related resource by means of a string conforming to a formal identification system.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#source-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Source".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :subject,
      comment: %(The topic of the resource.).freeze,
      "dc:description": "Typically, the subject will be represented using keywords, key phrases, or classification codes. Recommended best practice is to use a controlled vocabulary.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#subject-007".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2012-06-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Subject".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :title,
      comment: %(A name given to the resource.).freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#title-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Title".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
    property :type,
      comment: %(The nature or genre of the resource.).freeze,
      "dc:description": "Recommended best practice is to use a controlled vocabulary such as the DCMI Type Vocabulary [DCMITYPE]. To describe the file format, physical medium, or dimensions of the resource, use the Format element.".freeze,
      "dc:hasVersion": "http://dublincore.org/usage/terms/history/#type-006".freeze,
      "dc:issued": "1999-07-02".freeze,
      "dc:modified": "2008-01-14".freeze,
      isDefinedBy: "dc11:".freeze,
      label: "Type".freeze,
      note: %(A second property with the same name as this property has been declared in the dcterms: namespace \(http://purl.org/dc/terms/\).  See the Introduction to the document "DCMI Metadata Terms" \(http://dublincore.org/documents/dcmi-terms/\) for an explanation.).freeze,
      type: "rdf:Property".freeze
  end
end