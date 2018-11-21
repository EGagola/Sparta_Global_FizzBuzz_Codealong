class FizzBuzz
  attr_accessor :fizzbuzz_array

  def initialize
    @fizzbuzz_array = []
  end

  # Method must generate array of numbers and fizz/buzz combinations in given range
  def fizzbuzz_iterator range_from , range_to
    (range_from..range_to).each do |i|
      if divisible_by?(i,3) && divisible_by?(i,5)
        @fizzbuzz_array << "FizzBuzz"
      elsif divisible_by?(i,3)
        @fizzbuzz_array << "Fizz"
      elsif divisible_by?(i,5)
        @fizzbuzz_array << "Buzz"
      else
        @fizzbuzz_array << i
      end
    end
  end
end
