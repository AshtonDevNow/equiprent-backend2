# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Product.destroy_all
  User.destroy_all
  Category.destroy_all

user_params = {
    name: "David",
    email: "fakeemail@fake.com",
    password: "12345678"
  }
user = User.create!(user_params)
category = Category.create!(name: "Bikes")
product_params = {
  name: "Motorcycle",
  description: "With sidecar!",
  user: user,
  category: category
}
product = Product.create!(product_params)

# products.each do |product|
#   prod = Product.create!(name: product[:name])
#   puts "product #{prod.name} has been created"
# end
