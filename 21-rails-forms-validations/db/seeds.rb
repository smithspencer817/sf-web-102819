# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  random_boolean = [true, false].sample
  random_number = rand(1...20)
  Alien.create(
    name: Faker::Movies::StarWars.specie, 
    description: Faker::Movies::StarWars.wookiee_sentence, 
    home_planet: Faker::Movies::StarWars.planet,
    appendages: random_number,
    dangerous: random_boolean
  )
end