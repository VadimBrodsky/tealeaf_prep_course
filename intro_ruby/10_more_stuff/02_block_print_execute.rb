def execute(&block)
  block
  # block.call
end

execute { puts "Hello from inside the executed method!" }

# Return Proc Object
# Print nothing to screen
# Need the block.call to execute the block