# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Department.create(name: "Clothes", description: "The highest of fashion, the greatest of the lastest.")

Department.create(name: "Food", description: "Neither delicious nor nutritious, yet somehow irresistable.")

Department.create(name: "Novelty", description: "Pointless yet necessary.")

Department.create(name: "Sports", description: "Use it once and then put it in storage!")

Department.create(name: "Books", description: "Cute decoration for shelves and tables.")

Department.create(name: "Electronics", description: "Enjoy for a year, then replace!")

Department.create(name: "Furniture", description: "Cute little mini-environments for all your favorite pests and critters.")

puts "seeded #{Department.all.size} Subs"
puts "#{Department.all}"

