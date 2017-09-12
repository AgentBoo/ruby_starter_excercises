# Print all words in the array but uppercased.
def print_capitals(words)
  words.each {|element| puts element.upcase}
end

# Double all numbers in the array and return a new array.
def double_it(numbers)
  numbers.map {|number| number * 2}
end

# Return an array of all even numbers in the given array.
def find_evens(numbers)
  numbers = numbers.select {|number| number % 2 == 0}
end

# Return the product of all numbers
# Do _NOT_ use numbers.product.
def product(numbers)
  numbers.reduce(1, :*)
end

# Get all odd numbers from the given array, square them, and
# return a new array of those squares.
def square_only_odds(numbers)
  numbers = numbers.select {|number| number.odd?}
  numbers.map {|number| number ** 2}
end

# Square all given numbers and sum them.
def sum_of_squares(numbers)
  numbers.map{|number| number ** 2}.reduce(0, :+)
end

# Return a new array of the ordinals (1 -> 1st) of the numbers given.
def ordinals(numbers)
  numbers.map do |number|
    if (number % 10 || number) == 1
      number.to_s + "st"
    elsif (number % 10 || number) == 2
      number.to_s + "nd"
    elsif (number % 10 || number) == 3
      number.to_s + "rd"
    else
      number.to_s + "th"
    end
  end
end
