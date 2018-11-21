require 'spec_helper'
include MathMethods
describe 'FizzBuzz' do

  before(:all) do
    @fb = FizzBuzz.new
  end

  it 'The method should return true if the number is divisible by 3' do
    expect(@fb.divisible_by?(30,3)).to be true
  end

  it 'The method should return false if the number is not divisible by 3' do
    expect(@fb.divisible_by?(40,3)).to be false
  end

  it 'The method should return true if the number is divisible by 5' do
    expect(@fb.divisible_by?(30,5)).to be true
  end

  it 'The method should return false if the number is not divisible by 5' do
    expect(@fb.divisible_by?(42,5)).to be false
  end

  it 'The method should correctly apply fizzbuzz to a given range' do
    @fb.fizzbuzz_iterator(1,15)

    expect(@fb.fizzbuzz_array[0]).to eq 1
    expect(@fb.fizzbuzz_array[2]).to eq "Fizz"
    expect(@fb.fizzbuzz_array[4]).to eq "Buzz"
    expect(@fb.fizzbuzz_array[-1]).to eq "FizzBuzz"
    expect(@fb.fizzbuzz_array.length).to eq 15
  end
end
