require 'forwardable'
require 'pry'

class Dog
  extend Forwardable

  def_delegators :to_a, :<<, :compact, :pop

  def run
    puts "Running"
  end

  def bark
    puts "Woof!"
  end

  def to_a
    puts "Woof 2!"
    bark
  end
end

dog_1 = Dog.new
dog_2 = Dog.new
dog_3 = Dog.new

array = [dog_1, dog_2]

array << dog_3

array.pop
