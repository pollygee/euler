require 'pry'
# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

RSpec.describe "Multiples of 3 and 5" do
  describe 'a number 10' do
    it 'has multiples that sum' do
      expect(sum_multiples(10)).to eq(23)
    end
  end

  describe 'a number 1000' do
    it 'has multiples that sum' do
      expect(sum_multiples(1000)).to eq(233168)
    end
  end

end

def sum_multiples max
  ary = *(1...max)
  divisible_list = []

  ary.each do |num|
    if divisible num
      divisible_list << num
    end
  end

  divisible_list.inject(:+)
end

def divisible number
  (number % 3 == 0) || (number % 5 == 0)
end

# multiples = find_multiples 1000
# puts multiples
# puts multiples.inject(:+)

