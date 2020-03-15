def calc_age(birthday)
  require 'date'
  d = Date.today.to_s
  d[0..3].to_i - birthday[0..3].to_i
end

puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22

