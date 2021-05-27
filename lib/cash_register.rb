class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << title
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * discount * 0.01).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
  end
  
  
end