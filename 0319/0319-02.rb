require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions

get "/" do
  result = [*1..43].sample(5).sort
  erb :index, layout: :layout, locals: { re: result}
end 

get "/about" do
  erb :about, layout: :layout
end 

post "/login" do
  # erb :login
  username = params[:username]
  password = params[:password]
  if username == "123" && password == "456"
    session[:hi9527] = username
    #session可以當成一個空hash，並塞資料給他
  end
  redirect "/"
end 

get "/logout" do
  session[:hi9527] = nil
  redirect "/"
end



# get '/about' do
#   "About Us"
# end

# get "/cats/:id" do
#   "這是第#{params[:id]}號的貓~~~~"
# end