
puts "Cleaning db..."

Service.destroy_all
User.destroy_all

# creating 5 users unser faker email
5.times do
new_user = User.new(email: Faker::Internet.free_email, password: '123456', password_confirmation: '123456')
new_user.save!
puts "adding user #{new_user.email}"
end

# creating 10 services with faker
10.times do
  users = User.all # creatign array of all users
  user = users.sample # choosing a randon user from array
  categories = ["walking", "sitting", "grooming"]
  new_service = Service.new( title: Faker::Lorem.sentence, category: "#{categories.sample}", description: Faker::Lorem.paragraph)
  new_service.user = user
  new_service.save
  puts "creating service #{new_service.title}"
end
