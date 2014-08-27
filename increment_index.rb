array = ["Help", 'me', 'i', 'dont', 'need']

p array 

array.each_with_index do |word, index|
  if word == 'me'
    index += 1
    puts "I got here!"
  end
  puts index
end
