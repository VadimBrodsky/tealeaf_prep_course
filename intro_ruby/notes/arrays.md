# Arrays


Accessing array elements:

```ruby
array = [1, 'Bob', 4.33, 'another string']
array.first
array.last
array[3]
```

Modifying Arrays

```ruby
array.pop               # removes the last item in the array
array.push("new item")  # adds a string to the end of the array
array.unshift("first")  # adds a string to the beginning of the array
array << "newest"       # shovel operator, same as push
```

Deleting Items

```ruby
array.delete_at(2)      # deleted the 3rd item in the array
array.delete("cat")     # deletes all instances of cat from array
array.uniq              # deletes any duplicate values
```

Iterating over array items

```ruby
# returns a new array with the transformation applied to each element
array.map { |x| x**2 }

# returns a new array with the items that returned true to the expression
array.select { |number| number > 4 }

# iterates over each item in the array returns the original array
array.each { |e| puts e + 2 }

# iterates through the array but passes the index into the block
array.each_index { |i| puts "This is index #{i}" }

# iterates with an index and a value
array.each_with_index { |val, idx| puts "#{idx+1}". #{val}" }
```

Common array methods

```ruby
array.index("item")     # returns the index value of the item
array.include?(3)       # checks if the array includes the argument
array.flatten           # flattens nested arrays to one-dimension
array.sort              # sorts numerically or a-z
array.product[4,5]      # combines two arrays by matching each pair