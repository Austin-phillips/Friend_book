# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def cc(name, age, hair_color, eye_color, gender, phone, alive)
  Person.create(name: name, age: age, hair_color: hair_color, eye_color: eye_color, gender: gender, phone: phone, alive: alive)
end

cc('Austin Phillips',20,'Brown','Green','Male','801-979-9638', true)
cc('Jaiden Kallas',19,'Black','Brown','Female','801-707-7849', true)
cc('Alex Cortez',19,'Brown','Green','Male','801-707-6833', true)