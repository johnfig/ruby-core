# Ruby's Array#product is designed to create every permutation of all elements
# in 2 arrays. This is an amazing tool rather than using a nested loop

class CrossProduct
  attr_accessor :range_1, :range_2

  def initialize(range_1, range_2)
    @range_1 = range_1
    @range_2 = range_2
  end

  def cross_product
    print range_1.product(range_2).map { |x,y| x+y }
  end
end

alpha  = ('a'..'z').to_a
alpha_with_blank  = alpha << ''
object = CrossProduct.new(alpha_with_blank, alpha)
object.cross_product
