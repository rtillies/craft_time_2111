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
    if supplies == {}
      false
    else
      craft.supplies_required.all? do |supply, quantity|
        @supplies[supply.to_s] >= quantity
      end
    end
  end

end
