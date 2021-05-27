class CashRegister
  
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      
      "After the discount, the total comes to #{@total}."
    end
  end
  
  def void_last_transaction
  end
  
  
  
end