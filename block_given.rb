class Dog
  attr_accessor :name,  :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def woof
    a = age
    a = yield if block_given?
    puts a
  end
end

dog = Dog.new("sparky", 23)
dog.woof
a = 123
dog.woof { a }


# this allows you to pass in a block after a method in
# order to yield the block



