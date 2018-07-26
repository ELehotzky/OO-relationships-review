class StockSolution
  attr_accessor :investor
  attr_reader :company

  @@all = []

  def initialize(investor, company)
    @investor = investor
    @company = company
    @price = company.price
    @@all << self
    self
  end

  def self.all
    @@all
  end
end


# Stock
#  * stock should initialize with an investor a company and a price
#  * stock should know about its investor and its company (emphasize attr_accessor is the getter/setter methods)
#  * would you ever switch the company for which a stock belongs to? what does that change with getter/setter
#  * Stock.all
