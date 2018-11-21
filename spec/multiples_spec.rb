require 'spec_helper'

describe 'Multiples' do

  before(:all) do
    @multiples = Multiples.new
  end

  it "The method should return true if numbers are multiples of three" do
    expect(@multiples.divisible_by?(9,3)).to be true
  end

  it "The method should return true if numbers are multiples of five" do
    expect(@multiples.divisible_by?(15,5)).to be true
  end

  it "The method should return false if numbers are not multiples of three" do
    expect(@multiples.divisible_by?(7,3)).to be false
  end

  it "The method should return false if numbers are not multiples of three" do
    expect(@multiples.divisible_by?(9,5)).to be false
  end

  it "The method calculates the sum of multiples of three and five for a given range" do
    expect(@multiples.sum_multiples(1,9)).to be 23
    expect(@multiples.sum_multiples(1,999)).to be 233168
  end
end
