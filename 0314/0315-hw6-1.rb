def calc_sum(param)
  param.reduce {|sum, n| sum + n }
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
# puts calc_sum(5)                # 印出 5
# puts calc_sum(nil)              # 印出 0

