require 'sinatra'
require "sinatra/reloader" if development?

get "/" do
  erb :index
end

get "/atm" do
  erb :atm
end
