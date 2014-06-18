class MyError < StandardError
  def initialize(msg = "You've triggered a MyError")
    super
  end
end

def raise_custom_error
  begin
    puts "I am at the top"
    raise MyError, "Though shalt not pass"
    puts "You'll never see me"
  rescue Exception => e 
    puts e.message
    puts "I'm back!"
  end 
end

raise_custom_error
