
puts "Cleaning db..."

Service.destroy_all
User.destroy_all

# creating 5 users unser faker email
5.times do
new_user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::Number.number, address: Faker::Address.street_address, email: Faker::Internet.free_email, password: '123456', password_confirmation: '123456')
new_user.save!
puts "adding user #{new_user.email}"
end

# creating 10 services with faker
10.times do
  users = User.all # creatign array of all users
  user = users.sample # choosing a randon user from array
  categories = ["walking", "sitting", "grooming"]
  postcodes = ["E12 5AA", "E12 5AS", "NW3 1AA", "NW3 1FR", "SW2 1AJ", "SW2 1ED"]
  radius = [1, 5, 10, 15]
  new_service = Service.new( title: Faker::Lorem.word, category: "#{categories.sample}", description: Faker::Lorem.paragraph, postcode: "#{postcodes.sample}", postcode_radius: radius.sample)
  new_service.user = user
  new_service.save
  puts "creating service #{new_service.title}"
end
