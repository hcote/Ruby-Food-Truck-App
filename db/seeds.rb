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
 foodtruck.foodtype = "veggie"
   foodtruck.save

 foodtruck = Foodtruck.new
 foodtruck.name = "Kingsley"
 foodtruck.latitude = "36.804363"
 foodtruck.longitude = "-122.271111"
 foodtruck.foodtype = "veggie"

 foodtruck.save

 foodtruck = Foodtruck.new
 foodtruck.name = "hunter"
 foodtruck.latitude = "37.004363"
 foodtruck.longitude = "-122.271111"
 foodtruck.foodtype = "pizza"

 foodtruck.save

 foodtruck = Foodtruck.new
 foodtruck.name = "Berto"
 foodtruck.latitude = "37.004363"
 foodtruck.longitude = "-122.271111"
 foodtruck.foodtype = "pizza"

 foodtruck.save
