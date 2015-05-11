munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# Augment the following hash such that it has
# - additional key value pairs that can act as a "sort index"
# - to quickly re-arrange a list of our family members as either
#   - sorted by name-length or
#   - sorted by their original order

# p munsters.keys
# p munsters.first.first
# p munsters["Herman"]

index = 0

munsters.each_pair do |key, value|
  # p key
  value["name_length"] = key.length
  value["original_sort"] = index
  index += 1
end

sorted_by_name = munsters.to_a.sort do |mem1, mem2|
  mem1[1]["name_length"] <=> mem2[1]["name_length"]
end

original_sort = munsters.to_a.sort do |mem1, mem2|
  mem1[1]["original_sort"] <=> mem2[1]["original_sort"]
end


p sorted_by_name
puts "-------"
p original_sort
