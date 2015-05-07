def tricky_method!(param)
  if param.class == String
    param += "rutabega"
  elsif param.class == Array
    param << "rutabega"
  else
    param
  end
end

my_string = tricky_method!("pumpkins")
my_array = tricky_method!(["pumpkins"])

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
