# puts "the value of 40 + 2 is " + (40 + 2)

# The error is because we are trying to perform an action with mixed data types that does not have an implicit conversion.

# Way A
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Way B
puts "the value of 40 + 2 is #{(40 + 2)}"
