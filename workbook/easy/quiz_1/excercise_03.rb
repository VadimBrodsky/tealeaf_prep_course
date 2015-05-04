advice = "Few things in life are as important as house training your pet dinosaur."

# Solution A
advice["important"] = "urgent"
puts advice

# Solution B
advice.gsub!('important', 'urgent')
