# I want to recreate the #each method using
# a for loop and blocks

array = ['cat', 'dog', 'fish', 'horse']

array.each do |animal|
  puts animal
end

class Array
  def fake_each
    for item in self
      yield item
    end
  end

  def another_fake_each(&block)
    for item in self
      block.call(item)
    end
  end
end

array.fake_each do |animal|
  puts "I am a #{animal}"
end

array.another_fake_each do |animal|
  puts "I am another fake each #{animal}"
end
