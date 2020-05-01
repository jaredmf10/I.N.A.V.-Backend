# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Destination.destroy_all

u1 = User.create(name: "Brian")
u2 = User.create(name: "Jared")
u2 = User.create(name: "Dutch")

d1 = Destination.create(name: "Tahiti", description: "We just need some muneh", region: "North America", country: "Merica", category: "Middle Of Nowhere")
d2 = Destination.create(name: "New York", description: "It looks better than it smells", region: "North America", country: "USA", category: "Mega City")