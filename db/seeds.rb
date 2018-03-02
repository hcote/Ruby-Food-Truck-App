# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

foodtruck = Foodtruck.new
 foodtruck.name = "Katie"
 foodtruck.latitude = "37.78"
 foodtruck.longitude = "-122.44"

   foodtruck.save

 foodtruck2 = Foodtruck.new
 foodtruck2.name = "Kingsley"
 foodtruck2.latitude = "36.804363"
 foodtruck2.longitude = "-122.271111"


 foodtruck2.save
