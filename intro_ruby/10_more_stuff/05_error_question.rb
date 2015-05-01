def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# The block is defined incorrectly, should be &block
# The method thinks we defined a parameter that was not called