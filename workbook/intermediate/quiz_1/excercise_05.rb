# Original Algorithm
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end



# My Solution
def way_a(number)
  divisors = []
  number.downto(1) do |dividend|
    divisors << number / dividend if number % dividend == 0
  end
  divisors
end

# p factors(0)
p "Way A Zero:", way_a(0)
p "Way A Negative Number:", way_a(-2)
p "Way A Positive Number", way_a(10)


def way_b(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p "Way B Zero:", way_b(0)
p "Way B Negative Number:", way_b(-2)
p "Way B Positive Number", way_b(10)

# Bonus 1
# The purpose of number % dividend == 0 is to check if there is a clean division of the two numbers with no remainder left.

# Bonus 2
# The second-to-last line with the divisors is the return value of the function.
