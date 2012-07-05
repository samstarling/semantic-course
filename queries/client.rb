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
      po:pid ?brand_pid ;
      dc:title ?brand_title .
    ?series a po:Series ;
      dc:title ?series_title ;
      po:pid ?series_pid ;
      po:episode ?episode .
    ?episode dc:title ?episode_title ;
      po:pid ?episode_pid .
  } LIMIT 5
""")

result.each do |r|
  puts "Brand: #{r[:brand_title]} (#{r[:brand_pid]})\nSeries: #{r[:series_title]} (#{r[:series_pid]})\nEpisode: #{r[:episode_title]} (#{r[:episode_pid]})\n---"
  #puts r[:pid].inspect
end