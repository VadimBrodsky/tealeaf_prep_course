ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Way A
p ages.delete_if { |key, value| value > 100 }

# Way B
p ages.keep_if { |key, value| value < 100  }
