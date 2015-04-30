# Files

## Creating a file

```ruby
my_file = File.new("simple_file.txt", "w+")
my_file.close
```

## Opening Files

- `r` : read-only (starts at beginning of file)
- `w` : write-only (if the file exists, overwrites everything in the file)
- `w+`: read and write (if the file exists, overwrites everything in the file)
- `a+`: read-write (if file exists, starts at end of file. Otherwise creates a new file). Suitable for updating files.

```ruby
my_file = File.open("cool_file.txt", "r")
my_file.close
```

## Open File for Reading

```ruby
File.read("file_name")        # Spits out entire contents of the file
File.readlines("file_name")   # Reads the entire file by individual lines returns an array
```

## Open File for Writing

- `write`: writes content to the file
- `puts` : like write but adds a newline at the end
- `<<`   : also works like puts and write

```ruby
# the file will be closed automatically once the block is done
File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }
```

```ruby
sample = File.open("simple_file.txt",  "w+")
# => #<File:simple_file.txt>
sample.puts("another example of writing to a file.")
# => nil
sample.close
# => nil
File.read("simple_file.txt")
# => "another example of writing to a file.\n"
 ```

 ```ruby
File.open("simple_file.txt", "a+") do |file|
  file << "Here we are with a new line of text"
end
# => #<File:simple_file.txt (closed)>
File.readlines("simple_file.txt").each do |line|
  puts line
end
# => ["another example of writing to a file.\n", "Here we are with a new line of text"]
```

## Deleting a File

```ruby
File.new("dummy_file.txt", "w+")
# => #<File:dummy_file.txt>
File.delete("dummy_file.txt")
# => 1
```