# Learn about how structs work in building simple classes with attributes.

# Struct
Guy = Struct.new(:name, :age)
john = Guy.new(name: 'john', age: 27)
john.name #=> 'john'
john.age  #=> '27'

# OpenStuct
gary = OpenStruct.new(name: 'gary', age: 27)
gary.name #=> 'gary'
gary.age  #=> '27'
