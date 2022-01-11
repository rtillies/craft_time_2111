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

  def can_build?(craft)
    supply_check = craft.supplies_required.map do |item, quantity|
      supply = item.to_s
      if @supplies.key?(supply)
        @supplies[supply] >= quantity
      else
        false
      end
    end.all?
  end

end
