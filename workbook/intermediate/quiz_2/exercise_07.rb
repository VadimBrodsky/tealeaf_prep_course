munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# The original data was indeed modified by the mess_with_demographics method, usually an Array#each iterator would returns a new array as a result and does not modify the original passed object, but in the context of a chained method it returns the new array and over-writes the values of the passes-in demo_hash object, which in-turn references the original munsters hash.


p munsters
p "----------"
p mess_with_demographics(munsters)
p "----------"
p munsters
