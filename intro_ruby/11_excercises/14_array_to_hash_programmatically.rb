contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_keys = [:email, :address, :phone]


contacts.each do |key, value|

  contact_keys.each do |hash_key|
    value[hash_key] = contact_data.first.first
    contact_data.first.shift
  end

  contact_data.shift

end

p contacts