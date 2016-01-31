# This successfully implements a let block with rspec

def let(symbol, &block)
  define_method(symbol) do
    yield
  end
end

let(:hello_world) { puts 'hello world' }

hello_world

def let!(symbol, &block)
  define_method(symbol) do
    yield
  end
  symbol
end

Dog = Struct.new(:name)

puts respond_to? :dog
let!(:dog) { Dog.new('sparky') }
puts respond_to? :dog
puts dog.inspect

