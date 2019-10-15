# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all


r1 = Restaurant.create(name: "Bombay Pizza", cuisine: "Indian")
r2 = Restaurant.create(name: "pappasitos", cuisine: "Mexican")

c1 = Customer.create(name: "Raul")
c2 = Customer.create(name: "Josie")
c3 = Customer.create(name: "Vidhi")

Review.create(restaurant_id: r1.id, customer_id: c1.id)
Review.create(restaurant_id: r2.id, customer_id: c2.id)
Review.create(restaurant_id: r2.id, customer_id: c3.id)
Review.create(restaurant_id: r1.id, customer_id: c3.id)
Review.create(restaurant_id: r1.id, customer_id: c2.id)



