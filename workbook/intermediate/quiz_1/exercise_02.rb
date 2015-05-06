statement = "The Flintstones Rock"

# Way A
def way_a(statement)
  letters = {}

  statement.split("").map do |letter|
    if letters.has_key?(letter)
      letters[letter] += 1
    else
      letters[letter] = 1
    end
  end

  letters
end


# Way B
def way_b(statement)
  result = {}
  letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
  letters.each do |letter|
    count = statement.scan(letter.to_s).count
    result[letter] = count if count > 0
  end
  result
end



puts way_a(statement)
puts way_b(statement)
