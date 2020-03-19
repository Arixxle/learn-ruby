class Monster
  def initialize(name, health, defence)
    @health = health * rand(100..200)
    @defence = defence * rand(5..10)
    @name = name
  end

  def fighting(hero,attack)
  puts "#{@name}的血量為#{@health}"
  h = hero
  x = @health #health
  y = @defence #defence
  z = attack
    until x <= 0
      a = ((z - y) * rand(1..2)).round #a是傷害量
      x = x - a
      puts "#{h}給#{@name}造成#{a}的傷害，#{@name}的血量剩#{x}"
      sleep 1
      if x <= 0
      m = (100 * rand(0.5..2)).round
      puts "#{h}獲得#{m}圓"
      end
    end
  end
end

kitty = Monster.new("Kitty", 1, 1)

kitty.fighting("悟空",30)