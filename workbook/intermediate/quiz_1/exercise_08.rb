def titleize_a(string)
  capitalized_array = string.partition(" ").each do |word|
    if !word.empty?
      word.downcase!
      word.capitalize!
    end
  end
  capitalized_array.join
end

p titleize_a("hello world")


def titleize_b(string)
  string.split.map{ |word| word.downcase.capitalize }.join(' ')
end

p titleize_b("hello world")
