class CashRegister
  
  attr_reader :total
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end
  
  def add_item(title, price, quantity)
    
  end
  
  
end