# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Project.destroy_all
user = User.create!(email: 'b@mail.ru', password: 12345678, password_confirmation: 12345678)
user2 = User.create!(email: 'b2@mail.ru', password: 12345678, password_confirmation: 12345678)
5.times do |i|
  user.projects.create(:name => "Project #{i}")
end
2.times do |i|
  user2.projects.create(:name => "Ugly Project #{i}")
end