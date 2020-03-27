require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions
account = 0

get "/atm" do
  erb :atm
end

post '/cal' do
  money = params[:money].to_i
  if params[:option] == "plus" && money >= 0
    account = account + money
  elsif params[:option] == "minus" && money >= 0 && account > money
    account = account - money
  else
    account = account
  end
  session[:account] = account
  redirect "/atm"
end
