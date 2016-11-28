def people(*people)
  p "Splat operator is an: #{people.class}"
  p people
end

def dogs(**dogs)
  p "Splat operator is an: #{dogs.class}"
  p dogs
end

def birds_and_cats_and_dogs(bird, *cats, **dogs)
  p bird
  p cats
  p dogs
end

people('John', 'Steve', 'Tom', 'Luke')
puts ''
dogs(sparky: 12, rover: 5, butch: 3)
puts ''

birds_and_cats_and_dogs('tweety', 'whiskers', 'fluffy', 'cloudy', sparky: 12, rover: 5, butch: 'three', 'hello' => 'world')
#=> "tweety"
#=> ["whiskers", "fluffy", "cloudy", {"hello"=>"world"}]
#   this is so bizarre that hello world was added to array.
#=> {:sparky=>12, :rover=>5, :butch=>"three"}
