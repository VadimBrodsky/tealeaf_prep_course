numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# => 1
# => 3
# The iteration cycle would be shorter because we run out of items quicker. The modifications to the array work on the actual array object that was passed.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#=> 1
#=> 2
