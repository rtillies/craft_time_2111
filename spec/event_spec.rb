require 'rspec'
require 'pry'
require './lib/person'
require './lib/craft'
require './lib/event'

describe 'Iteration 1. Event' do
  before :each do
    @craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    @person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    @event = Event.new("Carla's Craft Connection", [@craft], [@person])
  end

  it 'exists' do
    expect(@event).to be_a Event
  end

  it 'has attributes' do
    expect(@event.name).to eq("Carla's Craft Connection")
    expect(@event.crafts).to eq([@craft])
    expect(@event.attendees).to eq([@person])
  end
end
