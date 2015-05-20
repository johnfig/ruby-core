class Dog
  def bark
    puts 'woof'
  end
end

class Husky < Dog
  def bark
    super
    puts 'yelp'
  end
end

husky = Husky.new
husky.bark

class CustomArray
  def super_array
    [1,2,3]
  end
end

class ChildCustomArray < CustomArray
  def super_array
    array = ['dog', 'cat']
    array << super
    print array.flatten
  end
end

instance = ChildCustomArray.new
instance.super_array
