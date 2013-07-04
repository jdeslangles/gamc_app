# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


EngineType.delete_all
engine_types = EngineType.create([
  { description: "steam", fuel:"water" },
  { description: "diesel", fuel:"fuel oil" },
  { description: "internal combustion", fuel:"gasoline" },
  { description: "rocket booster", fuel:"liquid oxygen " }
  ])

type_steam = EngineType.where( description: 'steam' ).first
type_diesel = EngineType.where( description: 'diesel' ).first
type_combustion = EngineType.where( description: 'internal combustion' ).first
type_rocket = EngineType.where( description: 'rocket booster').first

BodyType.delete_all
body_types = BodyType.create([
  { description: 'cabriolet/convertible' },
  { description: 'saloon/sedan'},
  { description: 'estate/station wagon'},
  { description: 'sport'},
  { description: 'race'},
  { description: '4x4/off-roader'}
  ])

#easier to read would be BodyType.find_by_description('steam')
type_cabriolet = BodyType.where( description: 'cabriolet/convertible').first
type_sedan = BodyType.where( description: 'saloon/sedan').first
type_estate = BodyType.where( description: 'estate/station wagon').first
type_sport = BodyType.where( description: 'sport').first
type_race = BodyType.where( description: 'race').first
type_4x4 = BodyType.where( description: '4x4/off-roader').first

Car.delete_all
cars = Car.create([
  { make: "Ford", model_name: "Mustang", color: "red", year: 1983, doors: 4, image_url: "fordmustang.jpg", description: "Make a statement. Drive a Mustang.", engine_type_id: type_combustion.id, body_type_id: type_sport.id },
  { make: "Renault", model_name: "Espace", color: "blue", year: 1994, doors: 6, image_url: "renaultespace.jpg", description: "For large families with 12 kids or more.", engine_type_id: type_steam.id, body_type_id: type_estate.id },
  { make: "Citroen", model_name: "Picasso", color: "white", year: 2002, doors: 4, image_url: "citroenpicasso.jpg", description: "For the aspiring artist in you.", engine_type_id: type_diesel.id, body_type_id: type_sedan.id },
  { make: "Lamborghini", model_name: "Countach", color: "black", year: 1987, doors: 2, image_url: "lamborghinicountach.jpg", description: "Lamborghini. Countach. Enough said.", engine_type_id: type_rocket.id, body_type_id: type_race.id }
  ])