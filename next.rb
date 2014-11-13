# This is to explain that when a raise occurs it will still continue
# to run through the code and has the ability to be rescued 
# and execute existing code.

def rescue_and_next
  3.times  do |_x|
    begin
      puts 'I am before the raise.'
      raise 'An error has occured.'
      puts 'Negative, I am a meat popsicle'
    rescue
      puts 'I am rescued, but will iterated again'
      next
    end
  end
  puts 'I am after the begin block.'
end

rescue_and_next
