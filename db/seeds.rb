Dog.create(name: "Lola")
Dog.create(name: "Zipper")
Dog.create(name: "Pixel")
Dog.create(name: "Xavier")
Dog.create(name: "Charile")

Meal.create(
start_time: "2017-01-01 08:00:00 -0800",
end_time: "2017-01-01 08:15:00 -0800",
food: "Royal Canin Medium Puppy Dry",
dog_id: 1,
date: "2017-01-01"
)

Walk.create(
start_time: "2017-01-01 10:00:00 -0800",
end_time: "2017-01-01 11:45:00 -0800",
location: "Fort Funston",
dog_id: 1,
date: "2017-01-01"
)
