class CashRegister
  attr_accessor :item, :total, :discount

  def initialize(discount = 0)
    @item = []
    @total = 0
    @discount = discount
  end


  # def total
  #   add_item
  # end

  def add_item(item, price, quantity = 1)
    @quantity = quantity
    @price = price
    quantity.times do
    @item << item
  end
    @total += price * quantity
  end



  def apply_discount
    if @discount > 0
    @total -= (@total * @discount.to_f / 100)
    "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def items
    @item
  end



  def void_last_transaction
    @quantity.times do
    @item.pop
    end
    @total -= @price * @quantity
  end

end
