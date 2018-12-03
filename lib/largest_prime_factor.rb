require 'prime'
class LargestPrimeFactor

  attr_accessor :prime_factor_array

  def initialize
    @all_numbers_array = []
    @prime_number_array = []
    @prime_factor_array = []
  end

  def all_numbers_to_given_value range_to
    for i in 1 .. range_to do
      @all_numbers_array << i
    end
    @all_numbers_array
  end

  def find_primes_in_array
    @all_numbers_array.each do |value|
      @prime_number_array << value if value.prime?
    end
    @prime_number_array
  end

  def find_prime_factors number
    @prime_number_array.each do |prime_value|
      if (number % prime_value).zero?
        @prime_factor_array << prime_value
      end
    end
    @prime_factor_array.last
  end

end
