require 'sparql/client'
require 'awesome_print'

require 'sparql/client'

sparql = SPARQL::Client.new("http://dbtune.org/bbc/programmes/sparql/")

query = sparql.query('PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT * WHERE {
 ?s ?p ?o
} LIMIT 10')

puts query.inspect