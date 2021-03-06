# This file is automatically generated by /Users/gregg/Projects/ebnf/lib/ebnf/base.rb
# BRANCH derived from etc/turtle.ebnf
module Branch
  START = :turtleDoc

  BRANCH = {
    :BlankNode => {
      :ANON => [:ANON],
      :BLANK_NODE_LABEL => [:BLANK_NODE_LABEL],
    },
    :BooleanLiteral => {
      "false" => ["false"],
      "true" => ["true"],
    },
    :NumericLiteral => {
      :DECIMAL => [:DECIMAL],
      :DOUBLE => [:DOUBLE],
      :INTEGER => [:INTEGER],
    },
    :PrefixedName => {
      :PNAME_LN => [:PNAME_LN],
      :PNAME_NS => [:PNAME_NS],
    },
    :RDFLiteral => {
      :STRING_LITERAL_LONG_QUOTE => [:String, :_RDFLiteral_1],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:String, :_RDFLiteral_1],
      :STRING_LITERAL_QUOTE => [:String, :_RDFLiteral_1],
      :STRING_LITERAL_SINGLE_QUOTE => [:String, :_RDFLiteral_1],
    },
    :_RDFLiteral_1 => {
      "(" => [],
      ")" => [],
      "," => [],
      "." => [],
      ";" => [],
      :ANON => [],
      :BLANK_NODE_LABEL => [],
      :DECIMAL => [],
      :DOUBLE => [],
      :INTEGER => [],
      :IRIREF => [],
      :LANGTAG => [:_RDFLiteral_2],
      :PNAME_LN => [],
      :PNAME_NS => [],
      :STRING_LITERAL_LONG_QUOTE => [],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [],
      :STRING_LITERAL_QUOTE => [],
      :STRING_LITERAL_SINGLE_QUOTE => [],
      "[" => [],
      "]" => [],
      "^^" => [:_RDFLiteral_2],
      "false" => [],
      "true" => [],
    },
    :_RDFLiteral_2 => {
      :LANGTAG => [:LANGTAG],
      "^^" => [:_RDFLiteral_3],
    },
    :_RDFLiteral_3 => {
      "^^" => ["^^", :iri],
    },
    :String => {
      :STRING_LITERAL_LONG_QUOTE => [:STRING_LITERAL_LONG_QUOTE],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:STRING_LITERAL_LONG_SINGLE_QUOTE],
      :STRING_LITERAL_QUOTE => [:STRING_LITERAL_QUOTE],
      :STRING_LITERAL_SINGLE_QUOTE => [:STRING_LITERAL_SINGLE_QUOTE],
    },
    :base => {
      "@base" => ["@base", :IRIREF, "."],
    },
    :blankNodePropertyList => {
      "[" => ["[", :predicateObjectList, "]"],
    },
    :collection => {
      "(" => ["(", :_collection_1, ")"],
    },
    :_collection_1 => {
      "(" => [:_collection_2],
      ")" => [],
      :ANON => [:_collection_2],
      :BLANK_NODE_LABEL => [:_collection_2],
      :DECIMAL => [:_collection_2],
      :DOUBLE => [:_collection_2],
      :INTEGER => [:_collection_2],
      :IRIREF => [:_collection_2],
      :PNAME_LN => [:_collection_2],
      :PNAME_NS => [:_collection_2],
      :STRING_LITERAL_LONG_QUOTE => [:_collection_2],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:_collection_2],
      :STRING_LITERAL_QUOTE => [:_collection_2],
      :STRING_LITERAL_SINGLE_QUOTE => [:_collection_2],
      "[" => [:_collection_2],
      "false" => [:_collection_2],
      "true" => [:_collection_2],
    },
    :_collection_2 => {
      "(" => [:object, :_collection_1],
      :ANON => [:object, :_collection_1],
      :BLANK_NODE_LABEL => [:object, :_collection_1],
      :DECIMAL => [:object, :_collection_1],
      :DOUBLE => [:object, :_collection_1],
      :INTEGER => [:object, :_collection_1],
      :IRIREF => [:object, :_collection_1],
      :PNAME_LN => [:object, :_collection_1],
      :PNAME_NS => [:object, :_collection_1],
      :STRING_LITERAL_LONG_QUOTE => [:object, :_collection_1],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:object, :_collection_1],
      :STRING_LITERAL_QUOTE => [:object, :_collection_1],
      :STRING_LITERAL_SINGLE_QUOTE => [:object, :_collection_1],
      "[" => [:object, :_collection_1],
      "false" => [:object, :_collection_1],
      "true" => [:object, :_collection_1],
    },
    :directive => {
      "@base" => [:base],
      "@prefix" => [:prefixID],
      :SPARQL_BASE => [:sparqlBase],
      :SPARQL_PREFIX => [:sparqlPrefix],
    },
    :iri => {
      :IRIREF => [:IRIREF],
      :PNAME_LN => [:PrefixedName],
      :PNAME_NS => [:PrefixedName],
    },
    :literal => {
      :DECIMAL => [:NumericLiteral],
      :DOUBLE => [:NumericLiteral],
      :INTEGER => [:NumericLiteral],
      :STRING_LITERAL_LONG_QUOTE => [:RDFLiteral],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:RDFLiteral],
      :STRING_LITERAL_QUOTE => [:RDFLiteral],
      :STRING_LITERAL_SINGLE_QUOTE => [:RDFLiteral],
      "false" => [:BooleanLiteral],
      "true" => [:BooleanLiteral],
    },
    :object => {
      "(" => [:collection],
      :ANON => [:BlankNode],
      :BLANK_NODE_LABEL => [:BlankNode],
      :DECIMAL => [:literal],
      :DOUBLE => [:literal],
      :INTEGER => [:literal],
      :IRIREF => [:iri],
      :PNAME_LN => [:iri],
      :PNAME_NS => [:iri],
      :STRING_LITERAL_LONG_QUOTE => [:literal],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:literal],
      :STRING_LITERAL_QUOTE => [:literal],
      :STRING_LITERAL_SINGLE_QUOTE => [:literal],
      "[" => [:blankNodePropertyList],
      "false" => [:literal],
      "true" => [:literal],
    },
    :objectList => {
      "(" => [:object, :_objectList_1],
      :ANON => [:object, :_objectList_1],
      :BLANK_NODE_LABEL => [:object, :_objectList_1],
      :DECIMAL => [:object, :_objectList_1],
      :DOUBLE => [:object, :_objectList_1],
      :INTEGER => [:object, :_objectList_1],
      :IRIREF => [:object, :_objectList_1],
      :PNAME_LN => [:object, :_objectList_1],
      :PNAME_NS => [:object, :_objectList_1],
      :STRING_LITERAL_LONG_QUOTE => [:object, :_objectList_1],
      :STRING_LITERAL_LONG_SINGLE_QUOTE => [:object, :_objectList_1],
      :STRING_LITERAL_QUOTE => [:object, :_objectList_1],
      :STRING_LITERAL_SINGLE_QUOTE => [:object, :_objectList_1],
      "[" => [:object, :_objectList_1],
      "false" => [:object, :_objectList_1],
      "true" => [:object, :_objectList_1],
    },
    :_objectList_1 => {
      "," => [:_objectList_3],
      "." => [],
      ";" => [],
      "]" => [],
    },
    :_objectList_2 => {
      "," => [",", :object],
    },
    :_objectList_3 => {
      "," => [:_objectList_2, :_objectList_1],
    },
    :predicate => {
      :IRIREF => [:iri],
      :PNAME_LN => [:iri],
      :PNAME_NS => [:iri],
    },
    :predicateObjectList => {
      :IRIREF => [:verb, :objectList, :_predicateObjectList_1],
      :PNAME_LN => [:verb, :objectList, :_predicateObjectList_1],
      :PNAME_NS => [:verb, :objectList, :_predicateObjectList_1],
      "a" => [:verb, :objectList, :_predicateObjectList_1],
    },
    :_predicateObjectList_1 => {
      "." => [],
      ";" => [:_predicateObjectList_3],
      "]" => [],
    },
    :_predicateObjectList_2 => {
      ";" => [";", :_predicateObjectList_4],
    },
    :_predicateObjectList_3 => {
      ";" => [:_predicateObjectList_2, :_predicateObjectList_1],
    },
    :_predicateObjectList_4 => {
      "." => [],
      ";" => [],
      :IRIREF => [:_predicateObjectList_5],
      :PNAME_LN => [:_predicateObjectList_5],
      :PNAME_NS => [:_predicateObjectList_5],
      "]" => [],
      "a" => [:_predicateObjectList_5],
    },
    :_predicateObjectList_5 => {
      :IRIREF => [:verb, :objectList],
      :PNAME_LN => [:verb, :objectList],
      :PNAME_NS => [:verb, :objectList],
      "a" => [:verb, :objectList],
    },
    :prefixID => {
      "@prefix" => ["@prefix", :PNAME_NS, :IRIREF, "."],
    },
    :sparqlBase => {
      :SPARQL_BASE => [:SPARQL_BASE, :IRIREF],
    },
    :sparqlPrefix => {
      :SPARQL_PREFIX => [:SPARQL_PREFIX, :PNAME_NS, :IRIREF],
    },
    :statement => {
      "(" => [:_statement_1],
      "@base" => [:directive],
      "@prefix" => [:directive],
      :ANON => [:_statement_1],
      :BLANK_NODE_LABEL => [:_statement_1],
      :IRIREF => [:_statement_1],
      :PNAME_LN => [:_statement_1],
      :PNAME_NS => [:_statement_1],
      :SPARQL_BASE => [:directive],
      :SPARQL_PREFIX => [:directive],
      "[" => [:_statement_1],
    },
    :_statement_1 => {
      "(" => [:triples, "."],
      :ANON => [:triples, "."],
      :BLANK_NODE_LABEL => [:triples, "."],
      :IRIREF => [:triples, "."],
      :PNAME_LN => [:triples, "."],
      :PNAME_NS => [:triples, "."],
      "[" => [:triples, "."],
    },
    :subject => {
      "(" => [:collection],
      :ANON => [:BlankNode],
      :BLANK_NODE_LABEL => [:BlankNode],
      :IRIREF => [:iri],
      :PNAME_LN => [:iri],
      :PNAME_NS => [:iri],
    },
    :triples => {
      "(" => [:_triples_1],
      :ANON => [:_triples_1],
      :BLANK_NODE_LABEL => [:_triples_1],
      :IRIREF => [:_triples_1],
      :PNAME_LN => [:_triples_1],
      :PNAME_NS => [:_triples_1],
      "[" => [:_triples_2],
    },
    :_triples_1 => {
      "(" => [:subject, :predicateObjectList],
      :ANON => [:subject, :predicateObjectList],
      :BLANK_NODE_LABEL => [:subject, :predicateObjectList],
      :IRIREF => [:subject, :predicateObjectList],
      :PNAME_LN => [:subject, :predicateObjectList],
      :PNAME_NS => [:subject, :predicateObjectList],
    },
    :_triples_2 => {
      "[" => [:blankNodePropertyList, :_triples_3],
    },
    :_triples_3 => {
      "." => [],
      :IRIREF => [:predicateObjectList],
      :PNAME_LN => [:predicateObjectList],
      :PNAME_NS => [:predicateObjectList],
      "a" => [:predicateObjectList],
    },
    :turtleDoc => {
      "(" => [:_turtleDoc_1],
      "@base" => [:_turtleDoc_1],
      "@prefix" => [:_turtleDoc_1],
      :ANON => [:_turtleDoc_1],
      :BLANK_NODE_LABEL => [:_turtleDoc_1],
      :IRIREF => [:_turtleDoc_1],
      :PNAME_LN => [:_turtleDoc_1],
      :PNAME_NS => [:_turtleDoc_1],
      :SPARQL_BASE => [:_turtleDoc_1],
      :SPARQL_PREFIX => [:_turtleDoc_1],
      "[" => [:_turtleDoc_1],
    },
    :_turtleDoc_1 => {
      "(" => [:statement, :turtleDoc],
      "@base" => [:statement, :turtleDoc],
      "@prefix" => [:statement, :turtleDoc],
      :ANON => [:statement, :turtleDoc],
      :BLANK_NODE_LABEL => [:statement, :turtleDoc],
      :IRIREF => [:statement, :turtleDoc],
      :PNAME_LN => [:statement, :turtleDoc],
      :PNAME_NS => [:statement, :turtleDoc],
      :SPARQL_BASE => [:statement, :turtleDoc],
      :SPARQL_PREFIX => [:statement, :turtleDoc],
      "[" => [:statement, :turtleDoc],
    },
    :verb => {
      :IRIREF => [:predicate],
      :PNAME_LN => [:predicate],
      :PNAME_NS => [:predicate],
      "a" => ["a"],
    },
  }.freeze
  TERMINALS = [
    "(",
    ")",
    ",",
    ".",
    ";",
    "@base",
    "@prefix",
    :ANON,
    :BLANK_NODE_LABEL,
    :DECIMAL,
    :DOUBLE,
    :INTEGER,
    :IRIREF,
    :LANGTAG,
    :PNAME_LN,
    :PNAME_NS,
    :SPARQL_BASE,
    :SPARQL_PREFIX,
    :STRING_LITERAL_LONG_QUOTE,
    :STRING_LITERAL_LONG_SINGLE_QUOTE,
    :STRING_LITERAL_QUOTE,
    :STRING_LITERAL_SINGLE_QUOTE,
    "[",
    "]",
    "^^",
    "a",
    "false",
    "true"
  ].freeze
  FIRST = {
    :BlankNode => [
      :BLANK_NODE_LABEL,
      :ANON],
    :BooleanLiteral => [
      "true",
      "false"],
    :NumericLiteral => [
      :INTEGER,
      :DECIMAL,
      :DOUBLE],
    :PrefixedName => [
      :PNAME_LN,
      :PNAME_NS],
    :RDFLiteral => [
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_RDFLiteral_1 => [
      :_eps,
      :LANGTAG,
      "^^"],
    :_RDFLiteral_2 => [
      :LANGTAG,
      "^^"],
    :_RDFLiteral_3 => [
      "^^"],
    :_RDFLiteral_4 => [
      :LANGTAG,
      :_eps,
      "^^"],
    :String => [
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :base => [
      "@base"],
    :_base_1 => [
      :IRIREF],
    :blankNodePropertyList => [
      "["],
    :_blankNodePropertyList_1 => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_blankNodePropertyList_2 => [
      "]"],
    :collection => [
      "("],
    :_collection_1 => [
      :_eps,
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_2 => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_3 => [
      ")",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_4 => [
      :_eps,
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_5 => [
      ")"],
    :directive => [
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE],
    :_empty => [
      :_eps],
    :iri => [
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :literal => [
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :object => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :objectList => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_objectList_1 => [
      :_eps,
      ","],
    :_objectList_2 => [
      ","],
    :_objectList_3 => [
      ","],
    :_objectList_4 => [
      :_eps,
      ","],
    :_objectList_5 => [
      :_eps,
      ","],
    :_objectList_6 => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :predicate => [
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :predicateObjectList => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_predicateObjectList_1 => [
      :_eps,
      ";"],
    :_predicateObjectList_2 => [
      ";"],
    :_predicateObjectList_3 => [
      ";"],
    :_predicateObjectList_4 => [
      :_eps,
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_predicateObjectList_5 => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_predicateObjectList_6 => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_predicateObjectList_7 => [
      :_eps,
      ";"],
    :_predicateObjectList_8 => [
      :_eps,
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_predicateObjectList_9 => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :prefixID => [
      "@prefix"],
    :_prefixID_1 => [
      :PNAME_NS],
    :sparqlBase => [
      :SPARQL_BASE],
    :_sparqlBase_1 => [
      :IRIREF],
    :sparqlPrefix => [
      :SPARQL_PREFIX],
    :_sparqlPrefix_1 => [
      :PNAME_NS],
    :statement => [
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_statement_1 => [
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_statement_2 => [
      "."],
    :subject => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :triples => [
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_triples_1 => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_triples_2 => [
      "["],
    :_triples_3 => [
      :_eps,
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_triples_4 => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :_triples_5 => [
      :_eps,
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :turtleDoc => [
      :_eps,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_turtleDoc_1 => [
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_turtleDoc_2 => [
      :_eps,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :verb => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
  }.freeze
  FOLLOW = {
    :BlankNode => [
      "a",
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :BooleanLiteral => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :NumericLiteral => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :PrefixedName => [
      "a",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ")",
      ",",
      ".",
      "]",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      ";",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :RDFLiteral => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_RDFLiteral_1 => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_RDFLiteral_2 => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_RDFLiteral_3 => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_RDFLiteral_4 => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :String => [
      :LANGTAG,
      "^^",
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :base => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_base_1 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :blankNodePropertyList => [
      ".",
      "a",
      ")",
      ",",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_blankNodePropertyList_1 => [
      ".",
      "a",
      ")",
      ",",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_blankNodePropertyList_2 => [
      ".",
      "a",
      ")",
      ",",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :collection => [
      "a",
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_1 => [
      ")"],
    :_collection_2 => [
      ")"],
    :_collection_3 => [
      "a",
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :_collection_4 => [
      ")"],
    :_collection_5 => [
      "a",
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :directive => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :iri => [
      "a",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ")",
      ",",
      ".",
      "]",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      ";",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :literal => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :object => [
      ")",
      ",",
      ".",
      "]",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      ";",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
    :objectList => [
      ".",
      "]",
      ";"],
    :_objectList_1 => [
      ".",
      "]",
      ";"],
    :_objectList_2 => [
      ",",
      ".",
      "]",
      ";"],
    :_objectList_3 => [
      ".",
      "]",
      ";"],
    :_objectList_4 => [
      ".",
      "]",
      ";"],
    :_objectList_5 => [
      ".",
      "]",
      ";"],
    :_objectList_6 => [
      ",",
      ".",
      "]",
      ";"],
    :predicate => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      ")",
      ",",
      ".",
      "]",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE,
      ";"],
    :predicateObjectList => [
      ".",
      "]"],
    :_predicateObjectList_1 => [
      ".",
      "]"],
    :_predicateObjectList_2 => [
      ";",
      ".",
      "]"],
    :_predicateObjectList_3 => [
      ".",
      "]"],
    :_predicateObjectList_4 => [
      ";",
      ".",
      "]"],
    :_predicateObjectList_5 => [
      ";",
      ".",
      "]"],
    :_predicateObjectList_6 => [
      ".",
      "]"],
    :_predicateObjectList_7 => [
      ".",
      "]"],
    :_predicateObjectList_8 => [
      ";",
      ".",
      "]"],
    :_predicateObjectList_9 => [
      ";",
      ".",
      "]"],
    :prefixID => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_prefixID_1 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :sparqlBase => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_sparqlBase_1 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :sparqlPrefix => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_sparqlPrefix_1 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :statement => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_statement_1 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :_statement_2 => [
      :_eof,
      "@prefix",
      "@base",
      :SPARQL_PREFIX,
      :SPARQL_BASE,
      "[",
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      :PNAME_LN,
      :PNAME_NS],
    :subject => [
      "a",
      :IRIREF,
      :PNAME_LN,
      :PNAME_NS],
    :triples => [
      "."],
    :_triples_1 => [
      "."],
    :_triples_2 => [
      "."],
    :_triples_3 => [
      "."],
    :_triples_4 => [
      "."],
    :_triples_5 => [
      "."],
    :turtleDoc => [
      :_eof],
    :_turtleDoc_1 => [
      :_eof],
    :_turtleDoc_2 => [
      :_eof],
    :verb => [
      :IRIREF,
      :BLANK_NODE_LABEL,
      :ANON,
      "(",
      "[",
      :PNAME_LN,
      :PNAME_NS,
      :INTEGER,
      :DECIMAL,
      :DOUBLE,
      "true",
      "false",
      :STRING_LITERAL_QUOTE,
      :STRING_LITERAL_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_SINGLE_QUOTE,
      :STRING_LITERAL_LONG_QUOTE],
  }.freeze
  CLEANUP = {
    :_RDFLiteral_1 => :opt,
    :_collection_1 => :star,
    :_collection_2 => :merge,
    :_objectList_1 => :star,
    :_objectList_3 => :merge,
    :_predicateObjectList_1 => :star,
    :_predicateObjectList_3 => :merge,
    :_predicateObjectList_4 => :opt,
    :_triples_3 => :opt,
    :turtleDoc => :star,
    :_turtleDoc_1 => :merge,
  }.freeze
end

