require 'benchmark/ips'

def block_call(&block)
  block.call
end

def block_yield(&block)
  yield
end

def block_reference(&block)
  block
  1 + 1
end

def block_pass(&block)
  1 + 1
end

def just_yield
  yield
end

Benchmark.ips do |x|

  x.report("call") do
    block_call { 1 + 1 }
  end

  x.report("yield") do
    block_yield { 1 + 1 }
  end

  x.report("reference") do
    block_reference { 1 + 1 }
  end

  x.report("pass") do
    block_pass { 1 + 1 }
  end

  x.report("pass no block") do
    block_pass
  end 

  x.report("just yield") do
    just_yield { 1 + 1 }
  end

  x.compare!
end
