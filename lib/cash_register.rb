require 'pry'

class CashRegister
attr_accessor :total, :discount, :items ,:last_transaction
attr_reader :apply_discount
#attr_writer 


    def initialize(discount= 0)
        @total = 0
        @discount = discount
        @items = []
    end


 def add_item(title, price, quantity =1)
  self.last_transaction = price * quantity #setter method
  
   self.total += self.last_transaction #self. #total = +/- price but if you buy more then its * that price
   quantity.times do
   @items << title
  end
  end

  def apply_discount
    self.total = total- (total * (discount/100.00))
    if discount == 0 
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total.to_i}."  
    end
  end

 def void_last_transaction  
self.total -= last_transaction
end

end
