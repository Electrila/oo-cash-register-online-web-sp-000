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
      discount_amount = self.total * (@discount / 100).to_i
      "After the discount, the total comes to $#{self.total}."
      @total - discount_amount
    end
  end
  
  def void_last_transaction
  end
  
  
  
end