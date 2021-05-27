class CashRegister
  
  attr_reader :total
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price
  end
  
  def apply_discount
    discount_total = @total * employee_discount
    @total -= discount_total
  end
  
end