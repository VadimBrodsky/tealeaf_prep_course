flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Way A:
p flintstones.find_index { |name| name.start_with?("Be") }

# Way B:
p flintstones.index { |name| name[0,2] == "<Be></Be>" }
