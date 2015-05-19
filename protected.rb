# Protected allows you to use inheritence to have access to methods that are
# otherwise not publically available

class Dog
  def run
    puts 'running'
  end

  protected

  def bark
    puts 'bark'
  end
end

class Husky < Dog
  def protected_bark
    self.bark
  end
end

husky = Husky.new
husky.run
husky.protected_bark
