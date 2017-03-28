require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "Dog Saves" do
    Dog.create(name: "Lola", image_src: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi")
    expect(Dog.count).to eq 1
  end
  it "Dog Dosent Save...Missing a name" do
    Dog.create(name: "")
    expect(Dog.count).to eq 0
  end
end
