class CompanySolution
  attr_accessor :price
  attr_reader :name

  def initialize(name, price=0)
    @name = name
    @price = price
  end

  def update_stock_price(new_stock_price)
    @price = new_stock_price
    @price
  end

  def stocks
    StockSolution.all.select do |stock|
      stock.company == self
    end
  end

  def investors
    stocks.map do |stock|
      stock.investor.name
    end
  end

  def majority_stockholder
    
  end

end
#
# Company
#  * has name and price
#  * Company#update_stock_price
#  * Company#majority_stockholder
