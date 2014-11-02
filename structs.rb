require 'ostruct'
# Learn about how structs work in building simple classes with attributes.

# Struct
Guy = Struct.new(:name, :age)
john = Guy.new(name: 'john', age: 27)
puts john.name #=> 'john'
puts john.age  #=> '27'

# OpenStuct
gary = OpenStruct.new(name: 'gary', age: 27)
puts gary.name #=> 'gary'
puts gary.age  #=> '27'
