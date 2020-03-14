# def my_select(list)
#   result = []
#   list.each do |x|
#     result  << x if yield x
#   end
#   result
# end

# p my_select([1, 2, 3, 4, 5]){ |x| x.odd? }

#==============
def my_select(list)
  result = []
  for x in list
    result  << x  if yield x
  end
  result
end

p my_select([1, 2, 3, 4, 5]){ |x| x.odd? }

#==============

# def my_select(list)
#   result = []
#   for x in list
#     if yield x
#       result  << x 
#     end
#   end
#   result
# end

# p my_select([1, 2, 3, 4, 5]){ |x| x.odd? }