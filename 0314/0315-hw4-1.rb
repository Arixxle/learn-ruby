def generate_odd_numbers(n)
  result = []
  1.upto(n) do |n| #雖然知道這裡要用絕對值，但還是不太懂原理
    result << n if n.odd?
  end
  result

  # result = []
  # n.times do |n| #為什麼這裡做n 得出的數字會少一位，因為這裡的n會從0開始？？絕對值得原理是？
  #   result << n if n.odd?
  # end
  # result
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]