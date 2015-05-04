# Ruby uses conventions when naming methods to indicate the implied result of the method.
#
# Methods that end with the '!' change the original caller, methods that end with '?' usually return a boolean answer.

# 1. The '!=' is the not-equals comparison operator, you should use it when you need to check that two objects are different.

# 2. The '!' would negate anything that it precedes, if the user_name defined it would return false if the user_name is nil it would return true.

# 3. The uniq! method would remove all duplicated items in an array and overwrite the result on the original array.

# 4. The '?' before something usually returns a syntax error. Unless it is used with ':' as part of a ternary operator.

# 5. The '?' after something usually indicates a method that returns a boolean value.

# 6. The !! operator returns the boolean representation when preceded before an object.
