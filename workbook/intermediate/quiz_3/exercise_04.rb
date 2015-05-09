def tricky_method_two(a_string_param, an_array_param)
 	puts "--- before assignment"
	puts "a_string_param id: #{a_string_param.object_id}"
	puts "an_array_param id: #{an_array_param.object_id}"

  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']

 	puts "--- after assignment"
	puts "a_string_param id: #{a_string_param.object_id}"
	puts "an_array_param id: #{an_array_param.object_id}"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

puts "my_string id: #{my_string.object_id}"
puts "my_array id: #{my_array.object_id}"

tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# In this example the original string parameter changes the original object
# withing the method because of the use of the gsub! method.
