# Original method
def color_valid_a
	color = "red"
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Using a tertiary operator
def color_valid_b
	color = "red"
  color == "blue" || color == "green" ? true : false
end

# Using the implied return of the logical evaluation
def color_valid_c
	color = "red"
	color == "blue" || color == "green"
end

puts color_valid_a
puts color_valid_b
puts color_valid_c
