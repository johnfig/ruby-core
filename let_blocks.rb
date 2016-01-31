# This successfully implements a let block with rspec

def let(symbol, &block)
  define_method(symbol) do
    yield
  end
end

let(:hello_world) { puts 'hello world' }

hello_world
