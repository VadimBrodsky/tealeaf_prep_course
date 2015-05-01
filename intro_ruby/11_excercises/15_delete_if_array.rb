arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?("s") }
p arr

arr.push('snow', 'slippery', 'salted roads')
arr.delete_if { |string| string.start_with?("s", "w") }
p arr