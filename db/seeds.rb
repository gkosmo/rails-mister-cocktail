# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ings = []
20.times do

    ing = Ingredient.new({name: Faker::Hipster.word})
    ing.save
    ings << ing
end
=begin


10.times do
  cock = Cocktail.new({name: Faker::Hipster.word})
5.times do
   dose =  Dose.new({description: Faker::Space.distance_measurement, ingredient: ings.sample, cocktail: cock})

   cock.doses << dose
   dose.save
end
    cock.save
end
=end
