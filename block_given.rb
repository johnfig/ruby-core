# this allows you to pass in a block after a method in
# order to yield the block

class Terminator
  attr_accessor :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def shoot
    sound = yield if block_given?
    puts sound
  end
end

guy = Terminator.new('guy', 'hammer')
guy.shoot { 'Bang!' }


