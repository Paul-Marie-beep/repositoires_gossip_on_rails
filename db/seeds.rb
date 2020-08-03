# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Potin.destroy_all
Tag.destroy_all
JoinUserPotin.destroy_all



5.times do
  city = City.create(name: Faker::Address.city, zip_code: Faker::Code.npi)
end

10.times do
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::Simpsons.quote, email: Faker::Internet.email, age: Faker::Number.between(from: 12, to: 75))
  user.city = City.all.sample
  user.save
end

20.times do
  potin = Potin.new(title: Faker::Lorem.word, content: Faker::Lorem.sentences(number: 1, supplemental: true)) #On fait new et pas create car on ne pourra pas avoir le bon nombre d'arguments d'un coup
  potin.user = User.all.sample
  potin.save
end

10.times do
  tag = Tag.create(title: ["Romance", "Méchant", "Professionnel"].sample)
end

40.times do #Pas sûr du délire sur ce coup-là. Il y a sûrement un coup à trouver avec une boucle mais j'étais crevé quand je l'ai fait.
  j = JoinUserPotin.new
  j.potin = Potin.all.sample
  j.tag = Tag.all.sample
  j.save
end


