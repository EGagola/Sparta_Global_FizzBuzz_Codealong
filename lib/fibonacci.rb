class Fibonacci

  attr_accessor :fibonacci_array

  def initialize
    @fibonacci_array = []
  end

  # Method must generate fibonacci numbers for a given range and push them to an array
  def generate_fibonacci_array max_number
    @fibonacci_array << 1
    @fibonacci_array << 1
    fib = 0
    i = 2
    while fib < max_number do
      fib = @fibonacci_array[i-1] + @fibonacci_array[i-2]
        @fibonacci_array << fib
        i += 1
    end
    @fibonacci_array.pop
    puts @fibonacci_array.length
  end


  # Method must sum all numbers
  def sum_evens max_number
    sum = 0
    for j in 0 ... @fibonacci_array.length do
      if fibonacci_array[j].even?
        sum += @fibonacci_array[j]
      end
    end
    sum
  end
end
