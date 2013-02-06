# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'student' },
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Pete Argent', :email => 'peter@sydneydevcamp.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user.add_role :admin
puts 'SETTING UP PROFILE TYPES'
profile0 = ProfileType.create! :name => 'Education'
puts 'profile0 created'
profile1 = ProfileType.create! :name => 'Co-working Space'
puts 'profile1 created'
profile2 = ProfileType.create! :name => 'Startup'
puts 'profile2 created'
profile3 = ProfileType.create! :name => 'Accelerator/Incubator'
puts 'profile3 created'
profile4 = ProfileType.create! :name => 'Tech Blog'
puts 'profile4 created'