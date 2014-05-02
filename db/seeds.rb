# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Stuart Felkner', :email => 'stuart.felkner@gmail.com', :password => 'MakersCrest0110', :password_confirmation => 'MakersCrest0110'
puts 'New user created: ' << user.name
