class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  
  def initialize(discount=0)
  @total = 0 #sets an instance variable @total on initialization to zero optionally takes an employee discount on initialization
  @discount = discount
  @items = []
  end
  
  def add_item(title,price,quantity=0) #accepts a title and price and increases the total #also accepts an optional quantity
     quantity > 1 ? self.total += (price * quantity) : self.total += price
    
    while quantity > 0 
      items.push(title)
      quantity -= 1 
    end
    # doesn't forget about the previous total
    @last_transaction = quantity
  end
  
  def apply_discount
    self.discount = 0
end
end
