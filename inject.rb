# is a synonym for #reduce
# it is used to iterate over objects with another
# memoized object that can be manipulated

# you have to return memo at the end of the iteration
# loop in order for reduce to work properly

class InjectArray
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

  def new_array
    new_array = array.inject([]) do |memo, number|
      memo << number
    end


    puts ''
    print new_array
  end
end

injected = InjectArray.new([1,2,3,4,5])

injected.sum
injected.multiply
injected.hash
injected.new_array
