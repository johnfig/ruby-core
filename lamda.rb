# This is just a way to understand how lamdas work in ruby
# I already understand but need refreshers as I don't use these
# on a daily basis except for scopes in rails

foo = -> (arg) { arg*2 }
puts foo.call(2)

# is the same as

foo = lambda { |arg| arg*2 }
puts foo.call(2)

