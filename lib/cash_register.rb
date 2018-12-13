class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, quanitity=1)
    @total += price * quantity
    @items << title
  end
  def apply_discount
    @total = @total * ((100-@discount)/100)
    return "After the discount, the total comes to $#{total}."
  end
  def items 
    return @items
  end   
end
