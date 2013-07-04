# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Car.delete_all
cars = Car.create([
  { make: "Ford", model_name: "Mustang", color: "red", year: 1983, doors: 4, image_url: "fordmustang.jpg", description: "Make a statement. Drive a Mustang." },
  { make: "Renault", model_name: "Espace", color: "blue", year: 1994, doors: 6, image_url: "renaultespace.jpg", description: "For large families with 12 kids or more." },
  { make: "Citroen", model_name: "Picasso", color: "white", year: 2002, doors: 4, image_url: "citroenpicasso.jpg", description: "For the aspiring artist in you." },
  { make: "Lamborghini", model_name: "Countach", color: "black", year: 1987, doors: 2, image_url: "lamborghinicountach.jpg", description: "Lamborghini. Countach. Enough said." }
  ])