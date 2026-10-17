
require "faker"

# Delete existing products
Product.destroy_all

# Create 676 fake products
676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 1.0..1000.0),
    stock_quantity: Faker::Number.between(from: 0, to: 100)
  )
end

puts "Created #{Product.count} products!"
