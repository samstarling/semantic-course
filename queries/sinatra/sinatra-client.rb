require 'sparql/client'
require 'awesome_print'
require 'sinatra'
require 'haml'

helpers do
  include Rack::Utils
  alias_method :h, :escape
end

get '/' do
  haml :form
end

get '/result' do
  redirect '/'
end

post '/result' do
  sparql = SPARQL::Client.new("http://dbtune.org/bbc/programmes/sparql/")
  @raw_query = params[:query]
  @query = sparql.query(@raw_query)
  haml :result
end


