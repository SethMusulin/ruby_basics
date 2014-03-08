puts " Say something to grandma "
w = gets.chomp

n = rand(1930..1950)

if w != w.upcase
puts "HUH?! SPEAK UP SONNY!"
end


if w == w.upcase
  puts "NO, NOT SINCE #{n}!"
end

