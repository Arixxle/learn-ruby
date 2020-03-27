
module Randname
  def name_maker
    rdname = ""
      (1) * rand(3..8).times do 
        rdname << [*"a".."z"].sample
      end
    rdname.capitalize 
  end
  def ctname_maker
    list = "翠靈迎綠飛薇幻玉詩之沛蕾又山水瑤書藍惜菡懷松思薇宛雁平秋碧竹含雁友兒惜松凝萍天槐白菱翠凝凝彤之蓉元風易雙飛芹綺真安靈聽蓮凡亦飛云雪白以楓幼雪迎梅訪藍易卉芷兒聽容覓云水瑤幻波之藍之雲爾琴夢風寄易曼蝶代柳以荷寄卉春彤爾玉谷波飛蝶紫雁笑靈覓綠靈瑤雨嵐秋蕾白竹惜柏慕丹恨山友露采菡千雁冰香代槐涵翠沛琴宛綠亦秋尋雙語蕾涵玉易凝碧柏以柔翠冬聽柏盼之綠槐夏靈春琴雅柳向琴凌曼傲巧曉白友丹青卉雨曼覓蝶紫青宛旋慕芹之夢天雁惜萱尋丹如霜凝荷采文宛翠爾巧慕瑤新蝶詩陽憐瑤夜萱迎蘭含陽沛之之瑤芷竹聽海元玉惜秋春晴癡丹又寒南柔爾菡訪蕊飛風秋彤恨冬夢薇紫蓉如山冬之秋竹念翠雅松若真雨凡映蕊飛菱聽山曼春天芹雁薇小蘭寒楓半絲水亦雪煙語夏靖波含香寒珊凌柳半煙覓冬巧靈涵藍平荷思槐雨晴幻晴綠安映冬問松如安又南向珊宛安曉蕾幻芙綠海思旋含白谷蝶靈真憐旋憶薇夜南天瑤憐秋以文紫文春蕊以天雪巧冰煙翠靈思菱懷曼又凝聽易雨煙山晴青晴綺夢靈海采南思瑤。"
    ctrdname = ""
      (1) * rand(2..3).times do 
      ctrdname << list.each_char.to_a.sample
      end
    ctrdname 
  end
end

class Hero
  include Randname
end

def fight
  hero_a = {}
  hero_a[:name] = Hero.new.ctname_maker
  hero_a[:health] = rand(100..200).round
  hero_a[:attack] = rand(10..30).round
  hero_a[:defence] = rand(5..10).round
  puts "#{hero_a[:name]}的血量為#{hero_a[:health]}，攻擊力為#{hero_a[:attack]}，防禦力為#{hero_a[:defence]}"
  
  hero_b = {}
  hero_b[:name] = Hero.new.ctname_maker
  hero_b[:health] = rand(100..200).round
  hero_b[:attack] = rand(10..30).round
  hero_b[:defence] = rand(5..10).round
  puts "#{hero_b[:name]}的血量為#{hero_b[:health]}，攻擊力為#{hero_b[:attack]}，防禦力為#{hero_b[:defence]}"
  sleep 1
  
  ah = hero_a[:health]
  bh = hero_b[:health]
  aa = hero_a[:attack]
  ba = hero_b[:attack]
  ad = hero_b[:defence]
  bd = hero_b[:defence]
  m = (100 * rand(0.5..2)).round

  until ah <= 0 || bh <= 0
    bhurt = aa * rand(1..2) - bd
    bh = bh - bhurt
    puts "#{hero_a[:name]} 對 #{hero_b[:name]} 造成#{bhurt}傷害，#{hero_b[:name]} 剩 #{bh}HP"
      if bh <=0
        puts "#{hero_a[:name]} 勝利，並獲得#{m}圓"
        break
      end
    sleep 1
    ahurt = ba * rand(1..2) - ad
    ah = ah - ahurt
    puts "#{hero_b[:name]} 對 #{hero_a[:name]} 造成#{ahurt}傷害，#{hero_a[:name]} 剩 #{ah}HP"
      if ah <=0
        puts "#{hero_b[:name]}勝利，並獲得#{m}圓"
        break
      end
    sleep 1
  end
end

fight





