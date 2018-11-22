class Palindrome

  attr_accessor :product_array

  def initialize
    @product_array = []
    @unique_numbers_array = []
    @reversed_values_array = []
    @reversed_numbers_array = []
    @value_digit_array = []
    @palindrome_array = []
  end

  def generate_product_array range_to
    for i in 1 .. range_to do
      for j in 1 .. range_to do
        @product_array << (i * j)
      end
    end
    @product_array
  end

  def filter_unique_numbers
    @unique_numbers_array = @product_array.uniq
  end

  def make_reversed_array
    @unique_numbers_array.each do |value|
      value_as_string = value.to_s
      @value_digit_array = value_as_string.split('')
      @reversed_values_array = @value_digit_array.reverse
      reversed_value = @reversed_values_array.join
      @reversed_numbers_array << reversed_value.to_i
    end
    @reversed_numbers_array
  end

  def find_largest_palindrome
    for k in 0 ... @unique_numbers_array.length do
      @palindrome_array << @unique_numbers_array[k] if @unique_numbers_array[k] == @reversed_numbers_array[k]
    end
    @palindrome_array.last
  end
end
