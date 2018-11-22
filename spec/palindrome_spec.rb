require 'spec_helper'


describe 'Palindrome' do

  before(:each) do
    @pal = Palindrome.new
  end

  it "The method should make an array of every number generated from the multiplication of numbers in a range" do
    expect(@pal.generate_product_array(3)).to eq([1,2,3,2,4,6,3,6,9])
  end

  it "The method should produce an array with only unique products" do
    @pal.generate_product_array(3)
    expect(@pal.filter_unique_numbers).to eq([1,2,3,4,6,9])
  end

  it "The method should make a new array of the products in a reversed order" do
    @pal.generate_product_array(4)
    @pal.filter_unique_numbers
    expect(@pal.make_reversed_array).to eq([1,2,3,4,6,8,9,21,61])
  end

  it "The method should compare the original number against the reversed number and
  find the largest" do
    @pal.generate_product_array(99)
    @pal.filter_unique_numbers
    @pal.make_reversed_array
    expect(@pal.find_largest_palindrome).to eq 9009
  end

end
