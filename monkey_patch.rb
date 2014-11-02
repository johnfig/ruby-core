class Banker

  def work
    puts 'Get paid'
  end

  def trade
    puts "Get paid and trade"
  end

  alias :work :trade
end

banker = Banker.new
banker.work
banker.trade

