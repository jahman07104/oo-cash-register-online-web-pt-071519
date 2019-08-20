class Person
  
  attr_accessor :age
   def initialize(age)
    @age = 0
  end
   def birthday
    self.age += 1
  end
end
```

 Follow along with the specs in `spec/cash_register_spec.rb`. Reading along with what the tests are looking for can be really helpful!

 Take it one step at a time!



 **Hint #2:** The `void_last_transaction` method will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. In what method of the class are you working with an individual item?

 <p data-visibility='hidden'>View <a href='https://learn.co/lessons/oo-cash-register' title='Object Oriented Cash Register'>Object Oriented Cash Register</a> on Learn.co and start learning to code for free.</p>
  39  oo-cash-register-v-000/lib/cash_register.rb 
@@ -0,0 +1,39 @@
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items

   def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

   def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

   def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

   def void_last_transaction
    @total -= @price
  end
