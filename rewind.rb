array = [1,2,3,4,5]
enum = array.to_enum

enum.each do |x|
  if array.last == x
    enum.rewind
    array.pop
  end
  puts x
end

p array

