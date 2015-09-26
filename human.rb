require 'pry'

class Human
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def call_chloe
    puts 'Chloe get out from under the bed!'
  end

  def walk
    puts 'walking'
  end

  def whats_my_age?
    puts "#{name} you are #{age} years old"
  end
end

mita = Human.new('mita', '27')
mita.call_chloe
mita.walk
mita.whats_my_age?

