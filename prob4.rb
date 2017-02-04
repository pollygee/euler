# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

RSpec.describe "Largest Palendrome Product Finder" do 
  it "returns the numbers that create the largest palendrom of 2 numbers" do
    expect(palendrome_finder(2).to eq(9009))
  end
end

def palendrome_finder(number_of_digits)
  max_number = (10 ** number_of_digits) - 1
  number_one = max_number
  number_two = max_number


end