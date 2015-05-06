munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

# - iterate over the munsters hash
# - determine the musters' demograhic
#   - if age under 16 apply kid
#   - if age over 16 apply adult
#   - if age over 60 apply senior
# - save back the hash

AGE_OF_MAJORITY = 18
AGE_OF_RETIREMENT = 65

def determine_demographic(age)
  case age
  when 0...AGE_OF_MAJORITY
    "kid"
  when AGE_OF_MAJORITY..AGE_OF_RETIREMENT
    "adult"
  else
    "senior"
  end
end

munsters.each_value do |munster|
  demographic = determine_demographic( munster["age"] )
  munster["demographic"] = demographic
end

p munsters
