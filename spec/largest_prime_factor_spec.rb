require 'spec_helper'

describe 'LargestPrimeFactor' do

  before(:each) do
    @lpf = LargestPrimeFactor.new
  end

  it "Method should produce an array of all numbers up to a given value from 1" do
    expect(@lpf.all_numbers_to_given_value(5)).to eq([1,2,3,4,5])
  end

  it "Method should find all primes up to a given value" do
    @lpf.all_numbers_to_given_value(15)
    expect(@lpf.find_primes_in_array).to eq([2,3,5,7,11,13])
  end

  it "Method should find all the prime factors of a given number and push them to an array" do
    @lpf.all_numbers_to_given_value(30)
    @lpf.find_primes_in_array
    expect(@lpf.find_prime_factors(13195)).to eq(29)
  end
end
