class Hyundai
  attr_reader :year, :miliage, :price

  def initialize(year, mileage, price)
    @year = year
    @mileage = mileage
    @price = price
  end

  def details
    "This car is a #{year} hyundai with #{miliage} miles and costs #{price}"
  end

  # writer method. You don't need this is you have an attr_accessor instead of an attr_reader
  def year=(year)
    @year = year
  end
end

car = Hyundai.new(2013, 37000, "$15,900")
car.year = 2012
puts car.details
