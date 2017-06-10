# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(first_name: "Finn", last_name: "Jake", birthdate: '1990-02-03', username: "adventuretime", email: "finn@test.com", password: "password")
user2 = User.create(first_name: "Carlos", last_name: "Grijalva", birthdate: '1990-02-03', username: "bagel", email: "carlos@test.com", password: "password")
sports = Category.create(title: "Sports")
music = Category.create(title: "Music")
cooking = Category.create(title: "Cooking")
home = Category.create(title: "Home")
education = Category.create(title: "Education")
programming = Category.create(title: "Programming")
fitness = Category.create(title: "Fitness")

sports.subcategories.create(title: "Basketball")
sports.subcategories.create(title: "Football")
sports.subcategories.create(title: "Soccer")
sports.subcategories.create(title: "Baseball")
sports.subcategories.create(title: "Volleyball")
sports.subcategories.create(title: "Martial Arts")
sports.subcategories.create(title: "Running")
sports.subcategories.create(title: "Biking")
sports.subcategories.create(title: "Climbing")

music.subcategories.create(title: "Guitar")
music.subcategories.create(title: "Drums")
music.subcategories.create(title: "Piano")
music.subcategories.create(title: "Ukelele")
music.subcategories.create(title: "Saxophone")
music.subcategories.create(title: "Clarinet")
music.subcategories.create(title: "Flute")

cooking.subcategories.create(title: "Cake")
cooking.subcategories.create(title: "Casserole")
cooking.subcategories.create(title: "Baking")
cooking.subcategories.create(title: "Frying")
cooking.subcategories.create(title: "Steak")

home.subcategories.create(title: "Cleaning")
home.subcategories.create(title: "Organization")
home.subcategories.create(title: "Maintenance")
home.subcategories.create(title: "Decor")
  
education.subcategories.create(title: "Science")
education.subcategories.create(title: "Math")
education.subcategories.create(title: "Literature")
education.subcategories.create(title: "Social Science")

programming.subcategories.create(title: "Ruby")
programming.subcategories.create(title: "Javascript")
programming.subcategories.create(title: "Java")
programming.subcategories.create(title: "C++")

fitness.subcategories.create(title: "Macros")
fitness.subcategories.create(title: "Workout programs")
fitness.subcategories.create(title: "Coaching")
