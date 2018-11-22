class Fibonacci

  attr_accessor :fibonacci_array, :even_number_array

  def initialize
    @fibonacci_array = [0,1]
    @even_number_array = []
  end

  # Method must generate fibonacci numbers for a given range and push them to an array
  def generate_fibonacci_array max_number
    current_val = 0
    i = 2
    while current_val < max_number do
      current_val = @fibonacci_array[i-1] + @fibonacci_array[i-2]
      @fibonacci_array << current_val
      i += 1
    end
    @fibonacci_array.pop
  end


  # Method must sum all numbers that are even and ignore odd numbers
  def sum_evens max_number
    fibonacci_array.each do |value|
      even_number_array << value if value.even?
    end
    even_number_array.sum
  end
end
