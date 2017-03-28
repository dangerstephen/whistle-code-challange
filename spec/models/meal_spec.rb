require 'rails_helper'

RSpec.describe Meal, type: :model do
  it "Meals Saves" do
    Meal.create(
      start_time: "2017-01-01 08:00:00 -0800",
      end_time: "2017-01-01 08:15:00 -0800",
      date: "2017-01-01",
      food: "Royal Canin Medium Puppy Dry",
      dog_id: 1
    )
    expect(Meal.count).to eq 1
  end
  it "Meal Doesnt Save...Missing Dog Id" do
    Meal.create(
      start_time: "2017-01-01 08:00:00 -0800",
      end_time: "2017-01-01 08:15:00 -0800",
      date: "2017-01-01",
      food: "Royal Canin Medium Puppy Dry"
    )
  end
  it "does not save when times overlap" do
    Meal.create(
      start_time: "2017-01-01 08:00:00 -0800",
      end_time: "2017-01-01 08:15:00 -0800",
      date: "2017-01-01",
      food: "Royal Canin Medium Puppy Dry",
      dog_id: 1
    )

    Meal.create(
      start_time: "2017-01-01 08:14:59 -0800",
      end_time: "2017-01-01 08:30:00 -0800",
      date: "2017-01-01",
      food: "Royal Canin Maxi Puppy Dry",
      dog_id: 1
    )
    expect(Meal.count).to eq 1
  end
end
