require 'sinatra'
require 'sinatra/reloader' if development?
require 'open-uri'
require 'json'



get "/" do
  data = File.read('2150b333756e64325bdbc4a5fd45fad1_export.json')
  rawdata = JSON.parse(data)
  arae_list = []
  rawdata.each do |r|
    arae_list << r["醫事機構地址"][0..2]
    arae_list = arae_list.select.uniq
  end

  erb :index, locals: {alist: arae_list}
end


get '/search' do
  data = File.read('2150b333756e64325bdbc4a5fd45fad1_export.json')
  rawdata = JSON.parse(data)
  result = []
  region = params[:region]
    rawdata.each do |r|
      if r["醫事機構地址"].include?(region)
        t = []
        t.push(r["醫事機構名稱"])
        t.push(r["醫事機構地址"])
        t.push(r["醫事機構電話"])
        t.push(r["成人口罩剩餘數"])
        t.push(r["兒童口罩剩餘數"])
        result.push(t)
        # result.push(r["醫事機構地址"])
        # result << r["醫事機構地址"]
      end       
    end
  erb :result, locals: {data: result}
end

get '/cal' do
  data = File.read('2150b333756e64325bdbc4a5fd45fad1_export.json')
  rawdata = JSON.parse(data)
  arae_list = []
  adult, child, d, cal_ad, cal_ch = 0, 0, 0, 0, 0
  area = params[:area]
  totalad, totalch = 0, 0

  rawdata.each do |t|
    totalad += t["成人口罩剩餘數"].to_i
    totalch += t["兒童口罩剩餘數"].to_i
  end

    rawdata.each do |r|
      if r["醫事機構地址"].include?(area)
        adult += r["成人口罩剩餘數"].to_i
        child += r["兒童口罩剩餘數"].to_i
        cal_ad = ((adult.to_f / totalad) * 100).round(2)
        cal_ch = ((child.to_f / totalch) * 100).round(2)
      end
    end

  erb :cal, locals: {ad: adult, ch: child, calad: cal_ad, calch: cal_ch, alist: arae_list, ttad: totalad, ttch: totalch}
end