require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions
account = 0

get "/" do
  erb :index
end 

get "/atm" do
  session[:amount] = account
  erb :atm, layout: :layout, locals: { ac: account}
end 

post "/cal" do
  account = session[:amount]
  money = params[:money].to_i
    if params[:option] == "+" && money >= 0 
      account = account + money
    elsif params[:option] == "-" && money >= 0  && account >= money 
      account = account - money
    else
      account = account
    end
  redirect "/atm"
end


