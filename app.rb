require 'sinatra'
require "sinatra/json"
require 'shotgun'
require './api/http'

get '/constellations' do
  http = Http.new
  res = http.fetch_constellations
  data = res

  json data
end

get '/constellation/:id' do
  http = Http.new
  res = http.fetch_constellation_by_id(params[:id])
  data = res

  json data
end