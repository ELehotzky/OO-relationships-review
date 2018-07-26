class InvestorSolution
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def buy_stock(company)
    new_stock = StockSolution.new(self, company)
  end

  def stocks
    StockSolution.all.select do |stock|
      stock.investor == self
    end
  end

  def companies
    self.stocks.map do |my_stock|
      my_stock.company.name
    end.uniq
  end

  def self.all
    @@all
  end


end

# Investor
#  * Investor#buy_stock - should take a company as input and create new stock instance
#  * Investor.all - should return all instances of investor
#  * Investor initializes with name
#  * find Investor with longest name
#  * Investor#stocks
#  * Investor#companies
#  * Investor#buy
#  BONUS:
#  * find investor with most companies invested in
