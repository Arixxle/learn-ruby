5.times do
  name = ("A".."Z").to_a.sample
  race = ["神族", "魔族", "天族"].sample
  role = ["戰士", "法師", "僧侶"].sample
  country = ["Roblaz", "Kisameen", "Tuimali"].sample
  structure = ["城堡", "高塔", "地窖"].sample
puts "#{name}是一個#{race}的#{role}，住在#{country}的#{structure}中。"
end