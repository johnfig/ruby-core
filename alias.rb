class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  alias :title :name
end

john = Person.new("The Dawg")

puts john.name  #=> The Dawg
puts john.title #=> The Dawg

