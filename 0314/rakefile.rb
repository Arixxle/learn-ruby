# desc "True Love Searcher"
# task :findlove do
#   puts "Linking to database..."
#   sleep 2
#   puts "Matching true love to you..."
#   sleep 3
#   puts "No one available!"
# end

# task :default => :findlove


namespace :profile do
  desc "faker" 
  task :generate do
    require 'faker'
    3.times do 
    n = Faker::Name.name #雖解出來，但不知道為何套件的指令是長這樣？還有指令的意思？
    m = Faker::Internet.email
    puts "#{n} <#{m}> "
    end  
  end
end
