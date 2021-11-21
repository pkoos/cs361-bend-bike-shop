class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(items, initial_capacity=DEFAULT_MAX_CAPACITY)
    @capacity = initial_capacity
    @items = items
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.length * 10
  end

  def item_count
    self.items.length
  end

end
