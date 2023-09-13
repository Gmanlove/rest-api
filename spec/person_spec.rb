require 'rails_helper'

RSpec.describe Person, type: :model do
  it "is valid with a name and age" do
    person = Person.new(name: "John Doe", age: 30)
    expect(person).to be_valid
  end

  it "is not valid without a name" do
    person = Person.new(name: nil, age: 30)
    expect(person).to_not be_valid
  end

  it "is not valid without an age" do
    person = Person.new(name: "John Doe", age: nil)
    expect(person).to_not be_valid
  end

  it "is not valid with a non-integer age" do
    person = Person.new(name: "John Doe", age: "thirty")
    expect(person).to_not be_valid
  end

  it "is not valid with a negative age" do
    person = Person.new(name: "John Doe", age: -5)
    expect(person).to_not be_valid
  end
end
