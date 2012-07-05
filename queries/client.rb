require 'sparql/client'
require 'awesome_print'

sparql = SPARQL::Client.new("http://dbtune.org/bbc/programmes/sparql/")

result = sparql.query("""
  PREFIX po: <http://purl.org/ontology/po/>
  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
  PREFIX dc: <http://purl.org/dc/elements/1.1/>
  PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
  SELECT *
  WHERE {
    ?brand a po:Brand ;
      po:series ?series ;
      dc:title ?brand_title .
    ?series a po:Series ;
      dc:title ?series_title ;
      po:episode ?episode .
    ?episode dc:title ?episode_title .
  } LIMIT 10
""")

result.each do |r|
  puts "#{r[:brand_title]} (#{r[:series_title]}) - #{r[:episode_title]}"
end