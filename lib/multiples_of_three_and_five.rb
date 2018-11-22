class Multiples 

  ## Should sum the multiples of three and five for a given range
  def sum_multiples range_from , range_to
    sum = 0
    for i in range_from .. range_to do
      if divisible_by?(i,3)
        sum += i
      elsif divisible_by?(i,5)
        sum += i
      end
    end
    sum
  end
end
