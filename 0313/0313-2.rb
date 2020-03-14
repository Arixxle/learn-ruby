class Life
  def breaf
    puts "hohohohoh~~~"
  end
end

class Animal < Life
  def eat
    puts "hmhmhmhm~"
  end
end

class Cat < Animal 
end

class Dog < Animal
end



Goofy = Dog.new
Kity = Cat.new

puts Goofy.breaf
puts Kity.eat