require 'pry'
# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# binding.pry

def find_multiples max
  ary = *(1...max)
  divisible_list = []

  ary.each do |num|
    if divisible num
      divisible_list << num
    end
  end

  divisible_list
end

def divisible number
  (number % 3 == 0) || (number % 5 == 0)
end

multiples = find_multiples 1000
puts multiples
puts multiples.inject(:+)
