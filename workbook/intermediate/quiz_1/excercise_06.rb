def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# There is no difference in the algorithm of the two buffer methods, the only difference is the array assignment in the first line of each which does not effect the algorithm.

# The biggest difference between the two methods is that the first one modified the passed-in buffer object while the second one returns a new value without modifying the original.
