require 'rspec'
require 'pry'
require './lib/person'
require './lib/craft'
require './lib/event'

describe 'Iteration 1. Person' do
  before :each do
    @person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
  end

  it 'exists' do
    expect(@person).to be_a Person
  end

  it 'has attributes' do
    expect(@person.name).to eq("Hector")
    expect(@person.interests).to eq(['sewing', 'millinery', 'drawing'])
    expect(@person.supplies).to eq({})
  end

  it '#add_supply' do
    @person.add_supply('fabric', 4)
    @person.add_supply('scissors', 1)
    expected = {"fabric"=>4, "scissors"=>1}

    expect(@person.supplies).to eq(expected)
  end

  it '#add_supply with existing item' do
    @person.add_supply('fabric', 4)
    @person.add_supply('scissors', 1)
    @person.add_supply('fabric', 3)
    expected = {"fabric"=>7, "scissors"=>1}

    expect(@person.supplies).to eq(expected)
  end
end

describe 'Iteration 2. Person' do
  before :each do
    @hector = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    @toni = Person.new({name: 'Toni', interests: ['sewing', 'knitting']})
    @sewing = Craft.new('sewing', {fabric: 5, scissors: 1, thread: 1, sewing_needles: 1})
    @knitting = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    @event = Event.new("Carla's Craft Connection", [@sewing, @knitting], [@hector, @toni])
  end

  it '#can_build? 1' do
    expect(@hector.can_build?(@sewing)).to eq(false)
  end
end
