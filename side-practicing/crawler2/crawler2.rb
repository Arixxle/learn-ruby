require 'open-uri'
require 'json'

url = "https://apiservice.mol.gov.tw/OdService/download/A17030000J-000049-8nD"

data = open(url).read

result = JSON.parse(data)

result.each do |r|
  p r
end