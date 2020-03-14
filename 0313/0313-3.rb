class Cat
  @@count = 0
  def initialize
    @@count += 1
  end
  def self.total
    @@count
  end
end

k1 = Cat.new
k2 = Cat.new
k3 = Cat.new
k4 = Cat.new
k5 = Cat.new

puts Cat.total