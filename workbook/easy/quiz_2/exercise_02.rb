ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }

# Way 1
total_ages = 0
ages.values.each {|i| total_ages += i }
p total_ages

# Way 2
p ages.values.reduce(:+)
