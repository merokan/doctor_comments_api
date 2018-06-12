# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    Comment.create({
        comment_body: Faker::Lorem.sentence,
        rating: Faker::Number.between(1, 5),
        author_id: Faker::Number.between(1, 10),
        doctor_id: Faker::Number.between(1, 10)
    })
end

10.times do
    Author.create({
        name: Faker::Name.name,
    })
end

10.times do
    Doctor.create({
        name: Faker::Name.name,
        address: Faker::Address.full_address,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
        city: Faker::Address.city,
        state: Faker::Address.state,
        group_id: Faker::Number.between(1,5)
    })
end

5.times do
    Group.create({
        name: Faker::Name.name
    })
end

Specialty.create(name: "Pediatrics")
Specialty.create(name: "Cardiology")
Specialty.create(name: "Dermatology")
Specialty.create(name: "Psychiatry")
Specialty.create(name: "Gynocology")
