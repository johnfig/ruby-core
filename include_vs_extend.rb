module Speak
  def say_hello
    puts "Hello"
  end

  def self.has_hair
    puts "Has Hair"
  end
end

class Person
  include Speak

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("John Fig", 27)
person.say_hello

class Dog
  extend Speak

  attr_accessor :name
end

Dog.say_hello


