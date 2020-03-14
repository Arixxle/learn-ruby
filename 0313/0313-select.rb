def my_select(list)
    result = []
      list.each do |i|
        result << i if yield(i) # if 前面的 i 是什麼意思？
        #意思是，如果 if yield(i) 做完有回傳ture，就把 i 放進 result嗎？ 因為 if 只會回傳true/false 
    result #為什麼這邊還要一個result? return省略
end
p my_select([1, 2, 3, 4, 5]) { |i| i.odd? }


def my_select(list)
  result = []
    list.each do |i|
      result << i if yield(i) # if 前面的 i 是什麼意思？
      #意思是，如果 if yield(i) 做完有回傳ture，就把 i 放進 result嗎？ 因為 if 只會回傳true/false 
  result #為什麼這邊還要一個result? return省略
end
p my_select([1, 2, 3, 4, 5]) { |i| i.odd? }

