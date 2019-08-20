class CashRegister 
  
  attr_accessor :discount, :total, :employee_discount, :items, :price 
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount 
    @employee_discount = employee_discount
    @items = []
    @transactions = 0
    @price = price 
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @transactions = price * quantity 
    i = quantity
    until i == 0 do
      @items << title
      i -= 1
    end
    
    #@item << title 
  end 
  
  def apply_discount
    if @discount > 0 
      @total = (@total - @total * @discount/100.0).to_i
      "After the discount, the total comes to $#{total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def items
    @items 
  end
  
  def void_last_transaction
     self.total -= @transactions 
   # else
    # binding.pry 
   # self.total = @total - @transactions.all
  
  #end 
end 
end
