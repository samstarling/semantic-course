require 'sparql/client'
require 'awesome_print'

require 'sparql/client'

sparql = SPARQL::Client.new("http://dbpedia.org/sparql")

query = sparql.select
  .where([RDF::URI("http://dbpedia.org/resource/Manchester"), :p, :o])
  .limit(20)

query.each_solution do |solution|
  puts solution.inspect
end