require 'sinatra'
require "sinatra/reloader" if development?

get "/" do
  result = [*1..43].sample(5).sort
  erb :index, layout: :layout, locals: { re: result}
end 

get "/about" do
  erb :about, layout: :layout
end 


# get '/about' do
#   "About Us"
# end

# get "/cats/:id" do
#   "這是第#{params[:id]}號的貓~~~~"
# end