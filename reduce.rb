# is a synonym for #inject
# it is used to iterate over objects with another 
# memoized object that can be manipulated

# you have to return memo at the end of the iteration
# loop in order for reduce to work properly

class ReduceArray
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def sum
    puts array.reduce(:+)
  end

  def multiply
    puts array.reduce(:*)
  end

  def hash
    array.reduce({}) do |memo, number|
      memo[:key] = number
      print memo
      memo
    end
  end
end

reduced = ReduceArray.new([1,2,3,4,5])

reduced.sum
reduced.multiply
reduced.hash

