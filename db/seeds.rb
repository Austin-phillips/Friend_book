# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def get_random()
  case rand(100) + 1
    when  1..50   then 'Male'
    when 50..100   then 'Female'
  end
end

haircolor = ['Brown', 'Blonde', 'Black', 'Red']
eyecolor = ['Brown', 'Blue', 'Green', 'Hazel']

def cc(name, age, hair_color, eye_color, gender, phone, alive)
  Person.create(name: name, age: age, hair_color: hair_color, eye_color: eye_color, gender: gender, phone: phone, alive: alive)
end

30.times do
cc(Faker::Name.name,
Faker::Number.between(18, 45),
hair_color = haircolor.sample,
eye_color = eyecolor.sample,
get_random(),
Faker::PhoneNumber.phone_number,
 true)
end
