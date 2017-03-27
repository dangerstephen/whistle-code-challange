require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "Dog Saves" do
    Dog.create(name: "Lola")
    expect(Dog.count).to eq 1
  end
  it "Dog Dosent Save...Missing a name" do
    Dog.create(name: "")
    expect(Dog.count).to eq 0
  end
end
