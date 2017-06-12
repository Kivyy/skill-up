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

sports_subcategories = [["Basketball","https://static.pexels.com/photos/305243/pexels-photo-305243.jpeg"], ["Football", "https://images.pexels.com/photos/4198/field-sport-ball-america.jpg?w=940&h=650&auto=compress&cs=tinysrgb"], ["Soccer","https://static.pexels.com/photos/274422/pexels-photo-274422.jpeg"], ["Baseball", "https://images.pexels.com/photos/99596/pexels-photo-99596.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"], ["Volleyball", "https://images.pexels.com/photos/40815/youth-active-jump-happy-40815.jpeg?h=350&auto=compress&cs=tinysrgb"], ["Martial Arts", "https://images.pexels.com/photos/165939/pexels-photo-165939.jpeg?h=350&auto=compress&cs=tinysrgb"], ["Running", "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"], ["Biking", "https://images.pexels.com/photos/17729/pexels-photo.jpg?w=940&h=650&auto=compress&cs=tinysrgb"], ["Climbing", "https://images.pexels.com/photos/30657/pexels-photo-30657.jpg?w=940&h=650&auto=compress&cs=tinysrgb"]]

sports_subcategories.each do |name, link|
  sports.subcategories.create(title: name, img_url: link)
end

# music_subcategories = ["Guitar", "Drums", "Piano", "Ukulele", "Saxophone", "Clarinet", "Flute"]

# music_subcategories.each do |s|
#   music.subcategories.create(title: s)
# end

# cooking_subcategories = ["Baking", "BBQ", "Meats", "Vegetarian/Vegan", "Kitchen Equipment"]

# cooking_subcategories.each do |s|
#   cooking.subcategories.create(title: s)
# end

# home_subcateogires = ["Cleaning", "Organization", "Maintenance", "Interior/Exterior Design"]

# home_subcateogires.each do |s|
#   home.subcategories.create(title: s)
# end

users = User.all

subcategories = Subcategory.all

booleans = [true, false]

40.times do
  scategory = subcategories.sample
  Skill.create(user: users.sample, subcategory: scategory , title: scategory.title, description: Faker::Hacker.say_something_smart, teach: booleans.sample)
end
