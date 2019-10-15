# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Train.destroy_all
Driver.destroy_all

d1 = Driver.create(name:"John")
d2 = Driver.create(name:"Nick")
d3 = Driver.create(name:"David")


Train.create(destination:"Boston", time: 3, driver_id: d1.id)
Train.create(destination:"Cal", time: 13, driver_id: d2.id)
Train.create(destination:"NYC", time: 20, driver_id: d1.id)
Train.create(destination:"Austin", time: 10, driver_id: d3.id)
Train.create(destination:"Houston", time: 5, driver_id: d1.id)

