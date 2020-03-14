def hello
  puts "123"
  yield 3
  puts "456"
end

hello { |x| puts "Hi" }