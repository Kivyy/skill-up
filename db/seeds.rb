40.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, birthdate: Faker::Date.birthday(18, 85), username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")
end

sports      = Category.create(title: "Sports")
music       = Category.create(title: "Music")
cooking     = Category.create(title: "Cooking")
home        = Category.create(title: "Home")
education   = Category.create(title: "Education")
programming = Category.create(title: "Programming")
fitness     = Category.create(title: "Fitness")

sports_subcategories = ["Basketball", "Football", "Soccer", "Baseball", "Volleyball", "Martial Arts", "Running", "Biking", "Climbing"]

sports_subcategories.each do |s|
  sports.subcategories.create(title: s)
end

music_subcategories = ["Guitar", "Drums", "Piano", "Ukulele", "Saxophone", "Clarinet", "Flute"]

music_subcategories.each do |s|
  music.subcategories.create(title: s)
end

cooking_subcategories = ["Baking", "BBQ", "Meats", "Vegetarian/Vegan", "Kitchen Equipment"]

cooking_subcategories.each do |s|
  cooking.subcategories.create(title: s)
end

home_subcateogires = ["Cleaning", "Organization", "Maintenance", "Interior/Exterior Design"]

home_subcateogires.each do |s|
  home.subcategories.create(title: s)
end

users = User.all

subcategories = Subcategory.all

booleans = [true, false]

40.times do
  Skill.create(user: users.sample, subcategory: subcategories.sample , title: (subcategories.sample).title, description: Faker::Hacker.say_something_smart, teach: booleans.sample)
end
