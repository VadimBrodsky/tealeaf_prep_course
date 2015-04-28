print "Enter a number: "
number = gets.chomp.to_i

case
when number >= 0 && number < 50
  puts "#{number} is between 0 and 50"
when number >= 50 && number < 100
  puts "#{number} is between 50 and 100"
when number > 100
  puts "#{number} is above 100"
else
  puts "The number cannot be lower than 0"
end
