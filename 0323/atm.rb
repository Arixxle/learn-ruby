require "sinatra"
require "sinatra/reloader" if development?

enable :sessions
account = 0


get "/atm" do
  session[:account] = account
  erb :atm
end

post "/cal" do
  money = params[:money].to_i
    if params[:option] == "plus" && params[:money] >= "0"
      account += money
      session[:info] = nil
    elsif params[:option] == "minus" && params[:money] >= "0" && params[:money].to_i <= account
      account -= money
      session[:info] = nil
    else
      session[:account] = account
      session[:info] = "請輸入正確金額"
    end
    session[:account] = account
  redirect "/atm"
end