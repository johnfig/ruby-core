class User
  attr_accessor :first_name, :last_name, :age, :gender

  def initialize(first_name, last_name, age, gender)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
  end
end

john = User.new("John", "Fig", 27, "Male")
lola = User.new("Lola", "Fig", 24, "Female")

puts john.inspect
puts lola.inspect
