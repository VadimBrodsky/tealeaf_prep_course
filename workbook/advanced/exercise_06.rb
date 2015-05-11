def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  result = true

  # while dot_separated_words.size > 0 do
  #   word = dot_separated_words.pop
  #   break if !is_a_number?(word)
  # end

  if dot_separated_words.length == 4
    dot_separated_words.each do |segment|
      result = false if segment.to_i == 0
    end
    return true if result
  else
    return false
  end

end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("hello")
