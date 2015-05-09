if false
  greeting = “hello world”
end

greeting
puts greeting
p greeting.class
p greeting.nil?

# The conditional is never run because it's false
# The greeting variable is defined but is not initialized with any value
# therefore it is set to nil

# Typically, when you reference an uninitialized variable, Ruby will raise an
# exception, stating that it's undefined. However, when you initialize a local
# variable within an if block, even if that if block doesn't get executed, the
# local variable is initialized to nil.
