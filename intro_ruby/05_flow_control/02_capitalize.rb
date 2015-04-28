def capitalize_ten(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts capitalize_ten("hello")
puts capitalize_ten("somethinglong")