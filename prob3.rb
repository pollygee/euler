require 'pry'

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

RSpec.describe 'Prime Factor Finder' do
  it 'returns all the prime factors of a number'do
    expect(prime_factor_finder(13195)).to eq([5,7,13,29])
  end
end
