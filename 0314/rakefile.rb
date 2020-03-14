desc "True Love Searcher"
task :findlove do
  puts "Linking to database..."
  sleep 2
  puts "Matching true love to you..."
  sleep 3
  puts "No one available!"
end

task :default => :findlove