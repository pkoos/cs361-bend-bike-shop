class Rental

  attr_reader :price, :weight, :item_count

  def initialize(price, weight, item_count)
    @price = price
    @weight = weight
    @item_count = item_count
  end

  def total_price
    self.price + (self.item_count * 10)
  end

  def total_weight
    self.weight + self.item_count
  end

end
