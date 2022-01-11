class Event
  attr_reader :name, :crafts, :attendees

  def initialize(name, crafts, attendees)
    @name = name
    @crafts = crafts
    @attendees = attendees
  end

  def attendee_names
    @attendees.map { |attendee| attendee.name }
  end

  def craft_with_most_supplies
    max_craft = @crafts.max_by do |craft|
      craft.supplies_required.length
    end.name
  end
end
