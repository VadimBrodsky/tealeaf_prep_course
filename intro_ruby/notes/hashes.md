# Hashes

```ruby
person = { height: '6 ft', weight: '160 lbs' }
person[:age] = 62
person.delete(:age)
person.merge!(new_hash)
```

Iterating over hashes

```ruby
person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
```

Other data types for keys instead of symbols

```ruby
{"height" => "6 ft"}
{["height"] => "6 ft"}
{1 => "one"}
{45.234 => "forty-five point something"}
{{key: "key"} => "hash as a key"}
```

Common hash methods

```ruby
person.has_key?(:name)
person.select { |k,v| k == "Bob" }
person.fetch("Steve")
person.to_a
person.keys
person.values
```
