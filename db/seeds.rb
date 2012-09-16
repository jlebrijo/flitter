# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
require 'populator'

User.destroy_all
10.times do
  user = User.new
  user.username = Faker::Internet.user_name.gsub('.','_')
  user.email = Faker::Internet.email
  user.password = "test"
  user.password_confirmation = "test"
  user.save
end
User.all.each do |user|
  # Add from 5 to 10 flits
  Flit.populate(5..0) do |flit|
    flit.user_id = user.id
    flit.message = Faker::Lorem.sentence
  end
  # Add 3 friends
  3.times do
    user.add_friend(User.where('id != :id',{ :id => user.id })[rand(User.count-1)])
  end
end