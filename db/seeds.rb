# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Start of Seeding..."
# # Cuisine.destroy_all
# 10.times do
#   Cuisine.new({ :cuisine_type => Faker::Restaurant.type }).save
#   puts "Seeding Over"
# end

# # User.destroy.all
# puts 'Creating an admin user'
# admin = User.create({ :email => 'robertdematteo1971@gmail.com', :password => '123456', :password_confirmation => '123456', :admin => true})
# puts admin.email

# puts 'Creating a regular user'
# regular = User.create({ :email => 'coderacademy.owenrob@gmail.com', :password => '123456', :password_confirmation => '123456', :admin => false})
# puts regular.email


Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
])







# puts 'Creating a user with moderator privilege'
# moderator = User.create({ :email => 'moderator@moderator.com.au', :password => '123456', :password_confirmation => '123456', :admin => false, moderator: true})
# puts regular.moderator