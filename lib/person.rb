class Person
  attr_reader :name, :interests, :supplies

  def initialize(hash)
    @name = hash[:name]
    @interests = hash[:interests]
    @supplies = {}
  end
end
