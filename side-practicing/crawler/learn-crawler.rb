require 'nokogiri'
require 'open-uri'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'csv'


get "/" do
  doc = CSV.read("A17030000J-000049-9k0.csv")
  erb :index, locals: { data: doc[1..8], head: doc[0]}
end




