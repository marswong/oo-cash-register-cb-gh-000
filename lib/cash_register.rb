class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @transaction = []
  end

  def add_item(title, price, quantity = 1)
    cost = price * quantity
    @total += cost
    @items << title
    @transaction << cost
  end

  def apply_discount
    if @discount
      @total *= (100 - @discount) / 100.0
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    last = @transaction.pop
    @total -= last
  end
end
