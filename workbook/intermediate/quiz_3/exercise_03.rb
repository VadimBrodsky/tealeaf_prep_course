def tricky_method(a_string_param, an_array_param)
	puts "---- before assignment"

	puts "a_string_param id: #{a_string_param.object_id}"
	puts "an_array_param id: #{an_array_param.object_id}"

  a_string_param += "rutabaga"
  #an_array_param << "rutabaga"
  #an_array_param.push("rutabaga")
  an_array_param += ["rutabaga"]

	puts "---- after assignment"

	puts "a_string_param id: #{a_string_param.object_id}"
	puts "an_array_param id: #{an_array_param.object_id}"

end

my_string = "pumpkins"
my_array = ["pumpkins"]

puts "my_string id: #{my_string.object_id}"
puts "my_array id: #{my_array.object_id}"

tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> pumpkins
puts "My array looks like this now: #{my_array}"   #=> pumpkins rutabaga

# The << operator of an array uses the original array object instead of the
# local copy, this is the reason why the method modifies the objects that were
# passed into it.
