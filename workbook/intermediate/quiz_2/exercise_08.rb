characters = [
  { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" },
  { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
  { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" },
  { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
]

class String
  def pretty_short_version(max_length=32)
    long_string = self.dup
    short_string = ""
    # if self.length > length
    #   result = result[0, length - 1] + "…"
    # end
    string_lenght = 0
    long_string = long_string.split

    long_string.each do |word|
      string_lenght += word.length
      if string_lenght >
    end


    result
  end
end

puts "Hello".shorten
puts "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone".shorten

characters.each do |character|
  puts character.values.map { |value| value.shorten }.join(", ")
end