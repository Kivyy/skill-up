# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
40.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, birthdate: Faker::Date.birtday(18, 85), username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")
end
# user = User.create(first_name: "Finn", last_name: "Jake", birthdate: '1990-02-03', username: "adventuretime", email: "finn@test.com", password: "password")
# user2 = User.create(first_name: "Carlos", last_name: "Grijalva", birthdate: '1990-02-03', username: "bagel", email: "carlos@test.com", password: "password")
# categories = ["Sports", "Music", "Cooking", "Home", "Education", "Technology", "Fitness"]

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
# magic = sports.subcategories.create(title: "Basketball")
# sports.subcategories.create(title: "Football")
# sports.subcategories.create(title: "Soccer")
# sports.subcategories.create(title: "Baseball")
# sports.subcategories.create(title: "Volleyball")
# sports.subcategories.create(title: "Martial Arts")
# sports.subcategories.create(title: "Running")
# sports.subcategories.create(title: "Biking")
# sports.subcategories.create(title: "Climbing")

# music.subcategories.create(title: "Guitar")
# music.subcategories.create(title: "Drums")
# music.subcategories.create(title: "Piano")
# music.subcategories.create(title: "Ukelele")
# music.subcategories.create(title: "Saxophone")
# music.subcategories.create(title: "Clarinet")
# music.subcategories.create(title: "Flute")

# cooking.subcategories.create(title: "Cake")
# cooking.subcategories.create(title: "Casserole")
# cooking.subcategories.create(title: "Baking")
# cooking.subcategories.create(title: "Frying")
# cooking.subcategories.create(title: "Steak")

# home.subcategories.create(title: "Cleaning")
# home.subcategories.create(title: "Organization")
# home.subcategories.create(title: "Maintenance")
# home.subcategories.create(title: "Decor")

# education.subcategories.create(title: "Science")
# education.subcategories.create(title: "Math")
# education.subcategories.create(title: "Literature")
# education.subcategories.create(title: "Social Science")
#
# programming.subcategories.create(title: "Ruby")
# programming.subcategories.create(title: "Javascript")
# programming.subcategories.create(title: "Java")
# programming.subcategories.create(title: "C++")
#
#
# fitness.subcategories.create(title: "Macros")
# fitness.subcategories.create(title: "Workout programs")
# fitness.subcategories.create(title: "Coaching")

# test1 = magic.skills.create(user_id: 1, title: "Basketball", description: "Dribbling", teach: true)
# test2 = magic.skills.create(user_id: 1, title: "Basketball", description: "3 Point Shot", teach: true)
# test3 = magic.skills.create(user_id: 1, title: "Basketball", description: "Dunking", teach: true)
