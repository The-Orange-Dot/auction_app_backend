
puts "Seeding..."

20.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username(specifier: 5..10),
    password: Faker::Internet.password(min_length: 8),
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    email: Faker::Internet.email,
    address: Faker::Address.full_address
  )
end

puts "Finished!!"