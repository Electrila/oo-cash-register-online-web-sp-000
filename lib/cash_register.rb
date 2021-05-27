class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount(discount)
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * discount * 0.01).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
  end
  
  
  
end