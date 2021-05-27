class CashRegister
  
  attr_accessor :total
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if employee_discount > 0
      @total -= (@total - (@total * (employee_discount / 100)))
      "After the discount, the total comes to #{@total}."
    else
      "There is no discount to apply."
  end
  
  
  
end