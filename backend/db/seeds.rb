# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Destination.destroy_all
Postcard.destroy_all

u1 = User.create(name: "Brian")
u2 = User.create(name: "Jared")
u2 = User.create(name: "Dutch")

d1 = Destination.create(name: "Tahiti", description: "We just need some muneh", region: "North America", country: "America", category: "Middle Of Nowhere")
d2 = Destination.create(name: "New York", description: "It looks better than it smells", region: "North America", country: "America", category: "Mega City")
d3 = Destination.create(name: "Sydney", description: "Come toss a shrimp on the barbey, mate!", region: "Austrailia", country: "Austrailia", category: "City")
d4 = Destination.create(name: "Bejing", description: "Now offering bike rides on the Great Wall", region: "Asia", country: "China", category: "Mega City")
d5 = Destination.create(name:"Tanzania", description: "Egyptian tans are second to none!", region: "Africa", country: "South Africa", category: "Resort")
d6 = Destination.create(name: "London", description: "Fish, Chips and Tea!", region: "Europe", country: "England", category: "City")

