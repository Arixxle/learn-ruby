language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

language.each do |i|
    puts i if i.start_with?('P')
end

puts "最短程式語言名:" << language.sort_by { |word| word.length }.first