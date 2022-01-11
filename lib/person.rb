class Person
  attr_reader :name, :interests, :supplies

  def initialize(hash)
    @name = hash[:name]
    @interests = hash[:interests]
    @supplies = {}
  end

  def add_supply(item, quantity)
    if @supplies.key?(item)
      @supplies[item] += quantity
    else
      @supplies[item] = quantity
    end
  end
end
