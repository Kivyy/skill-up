# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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