# Ruby Style

1. Make sure all Ruby source code uses 2 space indentation.
2. The hash sign `#` indicates a comment.
3. Use `snake_case` formatting for all method, variable or file names.
4. Constants are denoted by all uppercase letters.
5. When using short blocks prefer the `{}` syntax when fits one line.
6. Class names are named with `CamelCase` formatting.


```ruby
# Naming a file

  this_is_a_snake_cased_file.rb

# Assigning a variable

  forty_two = 42

# Defining a method

  def this_is_a_great_method
    # do stuff
  end
````

```ruby
 # Constant declaration

  FOUR = 'four'
  FIVE = 5
```

```ruby
# Multi-line vs single line

  [1, 2, 3].each do |i|
    # do stuff
  end

  [1, 2, 3].each { |i| # do stuff }
```

```ruby
# Class naming

  class MyFirstClass
  end

  class MySecondClass
  end
```