
puts "It's time for the beer song"
puts "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n"



puts "How many bottles of beer would you like to sing about?"
bottles = gets.chomp

if bottles == ""
 puts "I need to know how many bottles to sing!"
elsif bottles.to_i.to_s != bottles
  puts "Error, I need a number"
 else
  bottles = bottles.to_i
end


while bottles > 2
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\nTake one down and pass it around, #{bottles-1} bottles of beer on the wall.\n"
  bottles = bottles - 1
  end

if bottles == 2
  puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  bottles -= 1
end

if bottles == 1
  puts "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n"
  bottles -= 1
end

  if bottles == 0
  puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
end



