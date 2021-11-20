# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Recipe.destroy_all

american = Category.create(name: "American")
french = Category.create(name: "French")
italian = Category.create(name: "Italian")
chinese = Category.create(name: "Chinese")

Recipe.create(name: "Cheese Burger", ingredients: "Buns, Beef Patty, Cheese, Ketchup, Lettuce, Onions, Tomato", instructions: "Toast buns, grill beef patties. Layer the ingredients between buns in whichever order you desire", image_url: "https://upload.wikimedia.org/wikipedia/commons/b/bd/Cheeseburger_with_fries.jpg", category_id: american.id)