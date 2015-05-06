numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
p numbers

# returns the item at the passed index, modifies the original array by removing the 2nd item.

numbers.delete(1)
p numbers

# returns the item it deleted or nil if not found, deletes the passed in number.
