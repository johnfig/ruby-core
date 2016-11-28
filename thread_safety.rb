class ThreadSafety
  attr_accessor :dog

  def initialize(dog)
    @dog = dog
  end


  def unsafe_threading
    10.times do |_thread|
      start_thread
    end
  end

  private

  def start_thread
    Thread.new do
      begin
        if @dog == 'Not Spike'
          raise Exception, 'You are not threadsafe'
        end

        @dog = 'Not Spike'
      rescue Exception => e
        puts "EXCEPTION: #{e.inspect}"
        puts "MESSAGE: #{e.message}"
      end
    end
  end
end

ThreadSafety.new('Spike').unsafe_threading

