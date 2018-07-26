class Company

  @@all = []
  attr_reader :name
  attr_accessor :price

  def initialize(name, price= 100)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def update_stock_price(new_price)
    self.price = new_price
  end

  def shares
    Stock.all.select do |stock|
      stock.company == self
    end
  end

  def investors
    shares.map do |share|
      share.investor
    end
  end

  def majority_shareholder
    share_holder_count = Hash.new(0)
    # {"Johnny Stocks" => 0}
    shares.each do |share|
      share_holder_count[share.investor] += 1
    end
    puts share_holder_count
    x = share_holder_count.max_by do |name, stocks_amt|
      stocks_amt
    end
  end
end
