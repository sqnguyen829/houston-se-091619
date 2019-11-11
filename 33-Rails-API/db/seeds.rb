# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Event.destroy_all 

u1 = User.create(name: "Josie")
u2 = User.create(name: "Raul")
u3 = User.create(name: "Vidhi")

e1 = Event.create(location: "Los Angeles", user_id: u1.id)
e2 = Event.create(location: "Houston", user_id: u2.id)
e3 = Event.create(location: "Canada", user_id: u3.id)
