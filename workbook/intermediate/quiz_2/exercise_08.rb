characters = [
  { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" },
  { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
  { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" },
  { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
]

class String
  def pretty_short_version(max_length=32)
    long_string = self.dup.split
    short_string = []

    # - split input into word array
    # - initalize an empty new string
    # - add words one at a time until get over the max length
    # - if went over max length remove word
    # - add elipsis


    long_string.each do |word|
      if short_string.join(" ").length + 1 < max_length
        short_string << word
      end
    end

    if short_string.count == 1
      return short_string.join.slice(0, max_length) + "…"
    end

    if short_string.join(" ").length + 1 > max_length
      short_string.pop
    end

    short_string.join(" ") + "…"
  end
end

puts "thiisaverylognwordthatwouldneverendorfitintothelimit".pretty_short_version

characters.each do |character|
  puts character.values.map { |value| value.pretty_short_version }.join(", ")
end
