array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_numbers = array.select { |item| item.odd? }
p odd_numbers