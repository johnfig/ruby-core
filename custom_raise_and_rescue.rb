# Create a custom exception error class in order to show how classes can catch
# errors to render errors appropriately. This can be very helpful in controllers
# in rails to raise custom errors
class CustomRaise
  class CustomError < StandardError; end

  def self.break_it
    hello = {}
    hello[:break][:it]
  rescue StandardError => e
    puts 'Blowing up'
    puts "Error is: #{e}"
    raise CustomError, e
  end
end

class CustomCatcher
  def self.catch_it
    CustomRaise.break_it
  rescue CustomRaise::CustomError => e
    puts 'Catching it'
    puts "Error is: #{e}"
  end
end

CustomCatcher.catch_it

