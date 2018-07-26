class Investor

  @@all = []
  attr_reader :name, :account_balance

  def initialize(name, account_balance=0)
    @name = name
    @account_balance = account_balance
    @@all << self
  end

  def update_account_balance()

  end

  def execute_trade()

  end

  def shares
    Stock.all.select do |stock|
      stock.investor == self
    end
  end

  def companies
    shares.map do |share|
      share.company
    end
  end

  def self.all
    @@all
  end

end
