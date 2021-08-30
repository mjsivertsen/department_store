# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all
Item.destroy_all
# Comment.destroy_all

health = Department.create(name: "Health Items", description: "Items to rejuvenate your magic, health, or both.")
#recovery heart, red potion,green, blue potion
deku = Department.create(name:"Deku Stuff", description: "Deku stuff from the Kokiri Forest.")
#deku stick, deku nuts, deku shield, deku seeds
tunics = Department.create(name:"Tunics", description: "Hottest Fashion in Hyrule")
#red tunic, blue tunic
weapons = Department.create(name:"Weapons", description: "Everything you need to save the world.")
#bombs, arrows, hylian shield, 
odds = Department.create(name: "Odd Stuff", description: "This is the weird stuff that has a very specific purpose.")
#blue fire, bottle bug, fish, poe, fairy)

heart = health.items.create(name:"Recovery Heart", price: "10 Rupees", description: "Instantly refills one heart container.")
redp = health.items.create(name:"Red Potion", price: "30 Rupees", description: "Refills all health; single use.")
greenp = health.items.create(name:"Green Potion", price: "30 Rupees", description: "Refills all magic; single use.")
bluep = health.items.create(name:"Blue Potion", price: "100 Rupees", description: "Refills all health and magic; single use.")

# redp.comments.create(purchased_by: "Ganondorf", body:"Doesn't taste very good, but makes you feel good.")
# greenp.comments.create(purchased_by: "randomHylian404", body: "Absolutely the most disgusting thing I've ever tasted.")
# bluep.comments.create(purchased_by: "LinkOffical", body: "Expensive.  Cheaper to buy two potions that combined do the same thing.")

stick = deku.items.create(name:"Deku Stick", price: "10 Rupees", description: "A long branch gathered from the Great Deku Tree.  Can be used as a weapon, but it will break.")
nuts = deku.items.create(name:"Deku Nuts", price: "15 Rupees", description: "Used to stun enemies by throwing them.")
seeds = deku.items.create(name: "Deku Seeds", price: "30 Rupees", description:"Slingshot ammunition.")
dshield = deku.items.create(name: "Deku Shield", price: "40 Rupees", description:"Wooden shield engraved with the symbol of the Kokiri." )

rtunic = tunics.items.create(name:"Red Tunic", price: "200 Rupees", description:"Heat-resistence tunic, fabulous red color.")
btunic = tunics.items.create(name:"Blue Tunic", price: "300 Rupees", description:"Gorgeous blue tunic that allows one to breathe underwater.")

bombs = weapons.items.create(name:"Bomb", price: "5 Rupees Each", description:"Explosive. Comes in 5pack (25 Rupees) or 10pack (50 Rupees).")
wbombs = weapons.items.create(name:"Wholesale Bombs", price: "80 Rupees for 20 Bombs, or 120 Rupees for 40 Bombs", description:"Wholesale Bombs.  20pack or 40pack.")
arrows = weapons.items.create(name:"Arrows", price: "2 Rupees Each", description: "Ammunition for bow.  Comes in 10pack or 20pack.")
warrows = weapons.items.create(name:"Wholesale Arrows", price: "90 Rupees", description: "Ammunition for bow.  50pack.")
hshield = weapons.items.create(name:"Hylian Shield", price: "80 Rupees", description: "Big, heavy, metal shield with a Hylian design.")

bfire = odds.items.create(name:"Blue Fire", price: "300 Rupees", description:"Magic fire that can be carried in a bottle.  Melts red ice.")
bug = odds.items.create(name:"Bug in a Bottle", price: "50 Rupees", description:"Bug in a bottle that likes to dig.")
fish = odds.items.create(name:"Fish", price:"200 Rupees", description:"Fish that can be carried in a bottle.  Tasty.")
fairy = odds.items.create(name:"Fairy", price:"50 Rupees", description:"Fairy that can be carried in a bottle.  Restores all health, even after death.")
poe = odds.items.create(name:"Poe", price:"30 Rupees", description:"Ghosts that can be captured in a bottle.")



puts "seeded #{Department.all.size} departments"
puts "seeded #{Item.all.size} items"
# puts "seeded #(Comment.all.size} items"


