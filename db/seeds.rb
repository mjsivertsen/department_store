# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all
Item.destroy_all

clothes = Department.create(name: "Clothes", description: "The highest of fashion, the greatest of the lastest.")
food = Department.create(name: "Food", description: "Neither delicious nor nutritious, yet somehow irresistable.")
novelty = Department.create(name: "Novelty", description: "Pointless yet necessary.")

puts clothes
puts food
puts novelty

dress = clothes.items.create(name: "Dreamy Dress", description: "A beautiful handmade dress that will make you look like a figment of someone's imagination")
pants = clothes.items.create(name: "Pants Don't Dance", price: 34.99, description: "Pants might not dance by themselves, but once you're wearing these bad boys you'll have a hard time sitting still!")
shirt = clothes.items.create(name: "Heart On Your Sleeve", price: 19.99, description: "Hand-stitched and made with love.")

m_chocolate = food.items.create(name: "Loving You (The Milky Way)", price: 29.99, description: "Made to order heart-shaped milk chocolate truffles to show how much you love whoever eats them.")
d_chocolate = food.items.create(name: "Loving You with the Lights Off", price: 29.99, description: "Made to order heart-shaped dark chocolate truffles to show how much you love whoever eats them.")
w_chocolate = food.items.create(name: "Loving you in the Light of Day", price: 29.99, description: "Made to order heart-shaped white chocolate truffles to show how much you love whoever eats them.  A mix of milk, dark, and white.")
mixed_chocolate = food.items.create(name: "Chocolots of Love", price: 29.99, description: "Made to order heart-shaped chocolate truffles to show how much you love whoever eats them.  A mix of milk, dark, and white chocolate.")
mixed_chocolate_filled = food.items.create(name: "Fill and Bestill My Heart", price: 39.99, description: "Made to order heart-shaped chocolate truffles filled with a variety of flavored creams and caramel.  A mix of milk, dark, and white.")
custom_chocolate = food.items.create(name: "Whatever Way You Like It", price: 44.99, description: "Made to order heart-shaped chocolate truffle.  Whatever variety of chocolate filled with whatever variety of flavored creams and caramel that you choose.")
driedfruit = food.items.create(name: "Dry Your Eyes", price: 14.99, description: "Dried fruits sprinkled with a mix of sugar, tartaric acid, and citric acid.  Best way to comfort yourself when the vibes are sour.")
nuts = food.items.create(name: "Driving Me Nuts", price: 9.99, description: "Roasted and salted mixed nuts, for when you're feeling roasted, salty, and a little to close to the deep-end.")

Item.create(name: "Scavenged Skull", price: 69.99, description: "Roadkill deer skull that I found and cleaned up.", department_id:novelty.id)
Item.create(name: "Random Antique", price: 13.99, description: "I don't know what this is, but it's definitely old.", department_id:novelty.id)


puts "seeded #{Department.all.size} departments"
puts "seeded #{Item.all.size} items"



