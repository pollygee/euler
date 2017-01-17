require 'pry'
require 'prime'
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

RSpec.describe 'Prime Factor Finder' do
  it 'returns all the prime factors of 13195'do
    expect(prime_factor_finder(13195)).to eq([5,7,13,29])
  end

  it 'returns all the prime factors of 600851475143' do
    expect(prime_factor_finder(600851475143)).to eq([71, 839, 1471, 6857])
  end
end

def prime_factor_finder number
  prime_factors = []
  2.upto(Math.sqrt(number)) do |factor|
    prime_factors << factor if (number % factor == 0) && Prime.prime?(factor)
  end
  prime_factors
end