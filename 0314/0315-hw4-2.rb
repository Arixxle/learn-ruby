def calc_area(radius)
  r = radius
  a = 0
  if r <= 0
    "Radius must greater than zero!"
  else
    a = (r * r * 3.14159).round(2)
  end
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!