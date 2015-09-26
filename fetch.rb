class Dog
  attr_reader :hash

  def initialize(hash)
    @hash = hash
  end

  def fetch(key)
    hash.fetch(key)
  end

  def fetch_with_callback(key)
    hash.fetch(key) { 'not a dog' }
  end
end

dog = Dog.new({dog: 'nini'})
puts dog.fetch(:dog)
puts dog.fetch_with_callback(:dog)
puts dog.fetch_with_callback(:cat)

