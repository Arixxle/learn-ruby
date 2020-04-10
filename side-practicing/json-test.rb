# require 'rubygems'
# require 'json'

# # get json string
# r = File.read("race.json")

# # parse and convert JSON to Ruby
# obj = JSON.parse(r)

require 'open-uri'
require 'csv'
require 'json'



# doc = CSV.read("race_to_json.csv")
data = File.read('/app/javascript/packs/momei-data.json')
rawdata = JSON.parse(data)
list_race = []
rawdata.each do |r|
  if r["race"] != ""
    list_race << r["race"]
  end
end
p list_race.sample

# 5.times do
#   p a1 = doc.sample
# end


#   erb :index, locals: { data: doc[1..8], head: doc[0]}
# end
