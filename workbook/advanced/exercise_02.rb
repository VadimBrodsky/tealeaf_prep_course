greetings = { a: 'hi' }
puts "greetings: #{greetings.object_id}"
puts "greetings a: object: #{greetings[:a].object_id}"

informal_greeting = greetings[:a]
puts "informal_greeting: #{informal_greeting.object_id}"
informal_greeting << ' there'
p informal_greeting

puts informal_greeting  #  => "hi there"
puts greetings  				#  => {:a => "hi there"}

# informal_greeting is referencing the string object inside of the greetings
# hash, therefore when it's modified with the << operator the original
# greetings a: string is modified
