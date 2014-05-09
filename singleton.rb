# Singletone are essentially used when you only 
# want ONE instance of a class. For instance, you
# would probably only want ONE Sessions per user
# which is a use case for the Singleton Pattern.

require 'singleton'
 class Logger
  include Singleton
  def initialize
    @log = File.open("logfile.txt", "a")
  end
  def log(msg)
    @log.puts(msg)
  end
end

Logger.instance.log('This is just a test message')