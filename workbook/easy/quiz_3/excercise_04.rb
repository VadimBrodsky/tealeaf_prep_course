advice = "Few things in life are as important as house training your pet dinosaur."

# Way A
p advice.partition("house").first

# Way B
p advice.slice(0, advice.index('house'))
