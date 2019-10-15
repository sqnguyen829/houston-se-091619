# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Train.destroy_all

Train.create(destination:"Boston", time: 3)
Train.create(destination:"Cal", time: 13)
Train.create(destination:"NYC", time: 20)
Train.create(destination:"Austin", time: 10)
Train.create(destination:"Houston", time: 5)

