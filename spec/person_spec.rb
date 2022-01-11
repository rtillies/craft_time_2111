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
end
