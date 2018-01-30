class CashRegister
  attr_accessor :total, :discount

  def initialize(discount)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 0)
    
  end
end
