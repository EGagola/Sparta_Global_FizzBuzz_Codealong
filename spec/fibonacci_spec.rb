require 'spec_helper'

describe 'Fibonacci' do

  before(:all) do
    @fib = Fibonacci.new
  end

  it "The method should create an aray of fibonacci numbers" do
    @fib.generate_fibonacci_array(4000000)
    expect(@fib.fibonacci_array[3]).to eq 2
    expect(@fib.fibonacci_array[-1]).to eq 3524578
  end

  it "The method should sum all the even values of the array" do
    expect(@fib.sum_evens(4000000)).to eq 4613732
  end
end
