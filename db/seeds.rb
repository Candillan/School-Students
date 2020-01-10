# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.destroy_all
Student.destroy_all

school1 = School.create!(name: "Flatiron School", address:"11 Broadway")
school2 = School.create!(name: "NYU", address:"New York, NY 10003")
school3 = School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
school4 = School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
school5 = School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

Student.create!(name: "Jacob Kenny", age: 26, school_id: school1.id)
Student.create!(name: "Jay Wen", age: 25, school_id: school2.id)
Student.create!(name: "Calvin Baker", age: 27, school_id: school1.id)