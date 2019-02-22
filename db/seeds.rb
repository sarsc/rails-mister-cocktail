# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cocktail.destroy_all
# Ingredient.destroy_all

# lemon = Ingredient.create(name: "lemon")
# ice = Ingredient.create(name: "ice")
# mint = Ingredient.create(name: "mint leaves")

# gin_tonic = Cocktail.create(name: "Gin&Tonic")
# mojito = Cocktail.create(name: "Mojito")

# Dose.create(cocktail: mojito, ingredient: lemon, description: "Lemon")

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients['drinks'].each do |ingredient|
  ing = Ingredient.create(name: ingredient["strIngredient1"])
end







