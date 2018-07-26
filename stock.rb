class Stock

  @@all = []
  attr_reader :purchase_price, :company
  attr_accessor :investor
  def initialize(investor, company)
    @investor = investor
    @company = company
    @purchase_price = company.price
    @@all << self 
  end

  def self.all
    @@all
  end



end
