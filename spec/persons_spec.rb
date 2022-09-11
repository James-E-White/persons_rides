require'./lib/persons'

RSpec.describe Persons do
  before(:each)do
  @aurelia = Persons.new(name: "Aurelia",age: 18,intensity_max: 5)
  @taylor = Persons.new(name: "Taylor",age: 12,intensity_max: 3)
  end

  it 'exists' do
  expect(@aurelia).to be_an_instance_of(Persons)
  expect(@taylor).to be_an_instance_of(Persons)

  end
  it 'has readable attributes' do
  expect(@aurelia.age).to be(18)
  end

  it'is consider an adult if 18 or older'do
    expect(@aurelia.adult?).to eq(true)
    expect(@taylor.adult?).to eq(false)
  end
end
