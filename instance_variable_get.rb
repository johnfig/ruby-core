class Fred
  def initialize(p1, p2)
    @a, @b = p1, p2
  end
end

fred = Fred.new('cat', 99)
puts fred.instance_variable_get(:@a)    #=> "cat"
puts fred.instance_variable_get("@b")   #=> 99
