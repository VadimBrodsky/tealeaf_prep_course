numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Prints out all of numbers in the array
# The uniq method does not mutate the original caller, returns a new array
# => 1
# => 2
# => 3
