require 'bcrypt'

10.times do |vehicle|
  Car.create!(
    car_brand: Faker::Vehicle.make,
    car_model: Faker::Vehicle.model,
    image: "https://goo.gl/tgWBW1",
    user_id: 1,
    available: true,
    details: Faker::Vehicle.car_options.join(', '),
    price: 25000 * [1,2,3,4,5].sample,
  )
end

puts "10 cars created"

User.create!(
  name: "Obi Walker",
  email: "obinnawalker@gmail.com",
  isAdmin: true,
  disabled: false,
  password: BCrypt::Password.create("password"),
  encrypted_password: BCrypt::Password.create("password"),
  created_at: DateTime.now,
  updated_at: DateTime.now
)
puts "Admin user created"

5.times do |user|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    isAdmin: false,
    disabled: false,
    password: BCrypt::Password.create("password"),
    encrypted_password: BCrypt::Password.create("password"),
    created_at: DateTime.now,
    updated_at: DateTime.now
  )
end

puts "5 users created"

30.times do |rental|
  rental_date = DateTime.now + rand(8..21)
  Rental.create!(
    car_id: rand(1..10),
    user_id: "#{(rental % 5) + 1}",
    start_date: rental_date,
    end_date: rental_date + rand(3..10),
    status: 0
  )
end

puts "30 rentals created"