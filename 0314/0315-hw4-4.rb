# def average_cal(name)
#   n = name.to_sym
#   list = { john: [60, 75, 87, 90, 78], mary: [70, 76, 84, 93, 58], sherly: [90, 100, 77, 89, 98], joanne: [70, 73, 88, 92, 68] }
#   average = list[n].sum / 5.0
#   return "#{name.capitalize}: #{average}"
# end

# puts average_cal("john")
# puts average_cal("mary")
# puts average_cal("sherly")
# puts average_cal("joanne")

list = { john: [60, 75, 87, 90, 78], mary: [70, 76, 84, 93, 58], sherly: [90, 100, 77, 89, 98], joanne: [70, 73, 88, 92, 68] }

list.each do |key, value|
  puts "#{key.to_s.capitalize}: " << (value.sum / 5.0).to_s
end