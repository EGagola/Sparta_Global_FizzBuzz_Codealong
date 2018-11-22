class Fabonacci

  attr_accessor :fabonacci_array, :even_number_array

  def initialize
    @fabonacci_array = [1,2,3]
    @even_number_array = []
  end

  # create fibonacci sequence
  # create a valid array inside @fabonacci_array
  def fab_creator fab_max
    fabonacci_array << fabonacci_array[-1] + fabonacci_array[-2] while fabonacci_array.length < fab_max
    fabonacci_array.sum
  end

  def even_number_total_value
    fabonacci_array.each do |value|
      even_number_array << value if value.even?
    end
    even_number_array.sum
  end
end
