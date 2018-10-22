# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Aquarium.create(gallons: 10)
Aquarium.create(gallons: 55)

Fish.create(species: "Glo Fish", cost: 8, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Fish.create(species: "Tiger Barb", cost: 6, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Fish.create(species: "Neon Tetra", cost: 1, facts: "sdjfhlskdjfhlsdkf",aquarium_id: 1)


Equipment.create(item: "filter ($)", cost: 30, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Equipment.create(item: "heater ($)", cost: 30, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Equipment.create(item: "aerator ($)", cost: 10, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Equipment.create(item: "filter ($$)", cost: 60, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Equipment.create(item: "heater ($$)", cost: 50, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Equipment.create(item: "aerator ($$)", cost: 30, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)


Decor.create(style: "Modern", cost: 150, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Decor.create(style: "Sunken Pirate", cost: 100, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
Decor.create(style: "child friendly", cost: 60, facts: "sdjfhlskdjfhlsdkf", aquarium_id: 1)
