# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :storage, :rented

  def initialize(id, color, price, storage, rented = false)
    @id = id
    @color = color
    @price = price
    @storage = storage
    @rented = rented
  end

  def rent!
    self.rented = true
  end

end

class Storage
  STANDARD_WEIGHT = 200
  MAX_CARGO_ITEMS = 10

  attr_accessor :weight, :cargo_contents

  def initialize(weight = STANDARD_WEIGHT)
    @weight = weight
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end
end