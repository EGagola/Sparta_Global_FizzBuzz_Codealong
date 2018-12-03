require 'spec_helper'

describe 'Fabonacci' do

  before(:each) do
    @fabonacci = Fabonacci.new
  end

  it "should contain an array of [1,2,3]" do
    expect(@fabonacci.fabonacci_array).to eq [1,2,3]
  end

  it "should respond with total of 231 for first 10 terms of fibonacci sequence" do
    expect(@fabonacci.fab_creator(10)).to eq 231
  end

  it "should respond with 44 for the sum of the even numbers from a fibonacci max of 10" do
    @fabonacci.fab_creator(10)
    expect(@fabonacci.even_number_total_value).to eq 44
  end
end
