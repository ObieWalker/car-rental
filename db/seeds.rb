require 'bcrypt'

10.times do |vehicle|
  Car.create!(
    car_brand: Faker::Vehicle.make,
    car_model: Faker::Vehicle.model,
    image: Faker::Avatar.image("my-own-slug"),
    user_id: 1,
    available: true,
    details: Faker::Vehicle.car_options,
    price: 25000 * [1,2,3,4,5].sample,
  )
end

puts "10 cars created"

5.times do |user|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    isAdmin: true,
    disabled: false,
    password: BCrypt::Password.create("password"),
    encrypted_password: BCrypt::Password.create("password"),
    created_at: DateTime.now,
    updated_at: DateTime.now
  )
end

puts "5 users created"

5.times do |rental|
  Rental.create!(
    car_id: "#{rental}",
    user_id: "#{rental}",
    start_date: DateTime.now + 5,
    end_date: DateTime.now + 7,
    cancelled: false
  )
end

puts "5 rentals created"