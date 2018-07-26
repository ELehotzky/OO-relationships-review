require_relative './company.rb'
require_relative './stock.rb'
require_relative './inverstor.rb'
require "pry"

jordan_belfort = Investor.new("Wolf of Wallstreet Guy")
monopoly_guy = Investor.new("Monocle Guy")
johnny_stocks = Investor.new("Johnny Stocks")

walmart = Company.new("Walmart", 200)
walmart.update_stock_price(1)
apple = Company.new("Apple", 500)

Stock.new(johnny_stocks, walmart)
Stock.new(johnny_stocks, walmart)

Stock.new(monopoly_guy, walmart)

Stock.new(johnny_stocks, apple)
# apple = Company.new("Apple", 500)
# go_pro = Company.new("Go Pro", 9)
#
# monopoly_guy.execute_trade(apple)
# monopoly_guy.execute_trade(apple)
# monopoly_guy.execute_trade(apple)
# monopoly_guy.execute_trade(apple)
# monopoly_guy.execute_trade(apple)
#
# johnny_stocks.execute_trade(walmart)
# johnny_stocks.execute_trade(go_pro)
# johnny_stocks.execute_trade(walmart)

binding.pry
puts "Hello World"
