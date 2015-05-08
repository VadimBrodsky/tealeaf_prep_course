def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps("rock", "rock")
puts rps("rock", "scissors")
puts rps("rock", "paper")
puts rps("scissors", "scissors")
puts rps("paper", "paper")


puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")

# puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")
# puts rps( rps( "paper", "rock"), "rock")
# puts rps( "paper", "rock")
# => 'paper'
