class Person
  def walk
    puts "I'm walking"
  end

  def method_missing(sym, *args)
    puts "Looks like you can't do this"
  end
end

person = Person.new
person.walk
puts ''
person.fly
