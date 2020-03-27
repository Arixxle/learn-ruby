require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions

get "/" do
  erb :index
end 

post '/login' do
  session[:hi111] = params[:user]
  redirect "/"
end