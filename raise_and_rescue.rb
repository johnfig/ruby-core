# This is to explain that when a raise occurs it will still continue
# to run through the code and has the ability to be rescued 
# and execute existing code.

def raise_and_rescue
  begin
    puts 'I am before the raise.'
    raise 'An error has occured.'
    puts 'Negative, I am a meat popsicle'
  rescue
    puts 'I am rescued.'
  end
  puts 'I am after the begin block.'
end

raise_and_rescue
