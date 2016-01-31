# This successfully implements a #let and #let! block with rspec
# All let blocks are is defined methods that yield blocks that
# are passed in, they are methods that take 2 arguments, a symbol
# and a block

require 'pry'
def let(symbol, &block)
  define_method(symbol) do
    yield
  end
end

def let!(symbol, &block)
  define_method(symbol) do
    yield
  end.call
  method(symbol).call
end

Dog = Struct.new(:name)

let(:hello_world) { 'hello world' }
let!(:dog) { Dog.new('sparky') }

puts hello_world
puts dog.inspect

