require 'spec_helper'

describe 'Multiples' do

  before(:all) do
    @multiples = Multiples.new
  end

  it "The method calculates the sum of multiples of three and five for a given range" do
    expect(@multiples.sum_multiples(1,9)).to be 23
    expect(@multiples.sum_multiples(1,999)).to be 233168
  end
end
