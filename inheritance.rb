# Utilizing class variables in order to gain access to ruby versioned classes
# I wanted to understand how variables are passed accross classes via super and
# build up a hash that can be added to much like versioning
class V1Dog
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def dog_attributes
    @@attrs = {}
    @@attrs[:name] = name || @@name
    @@attrs[:age] = age || @@age
    puts @@attrs
  end
end

class V2Dog < V1Dog
  attr_accessor :name, :age, :type, :eye_color

  def initialize(name, age, type, eye_color)
    @name = name
    @age  = age
    @type = type
    @eye_color = eye_color
  end

  def dog_attributes
    @@attrs[:type] = type
    @@attrs[:eye_color] = eye_color
    puts @@attrs
  end
end

v1dog = V1Dog.new('Spike', 3)
v1dog.dog_attributes

v2dog = V2Dog.new('Spike', 3, 'Australian Sheperd', 'Blue')
v2dog.dog_attributes

