# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Instructor.destroy_all

raul = Instructor.create(name: "raul")
josie = Instructor.create(name: "josie")
vidhi = Instructor.create(name: "vidhi")

Student.create(name: "steven", major: "rails", age: 24, instructor_id: raul.id)
Student.create(name: "damini", major: "rails", age: 27, instructor_id: josie.id)
Student.create(name: "patrick", major: "ruby", age: 19, instructor_id: vidhi.id)
Student.create(name: "fabi", major: "rails", age: 23, instructor_id: raul.id)
Student.create(name: "max", major: "rails", age: 20, instructor_id: josie.id)
Student.create(name: "alexis", major: "rails", age: 21, instructor_id: vidhi.id)
Student.create(name: "david", major: "ruby", age: 22, instructor_id: raul.id)
Student.create(name: "chandon", major: "rails", age: 23, instructor_id: josie.id)
Student.create(name: "fernando", major: "ruby", age: 24, instructor_id: vidhi.id)


puts "we be seeded"