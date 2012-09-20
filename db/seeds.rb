
puts "Deleting Users, Families, Swimmers, Shirt, Event, Season"
User.destroy_all
Family.destroy_all
Swimmer.destroy_all
Shirt.destroy_all
Event.destroy_all
Season.destroy_all

puts "Creating Events"
Event.create(name: "50 Free", distance: 50, stroke: "Freestyle")
Event.create(name: "100 Free", distance: 100, stroke: "Freestyle")
Event.create(name: "50 Back", distance: 50, stroke: "Backstroke")
Event.create(name: "100 Back", distance: 100, stroke: "Backstroke")
Event.create(name: "50 Butterfly", distance: 50, stroke: "Butterfly")
Event.create(name: "100 Butterfly", distance: 100, stroke: "Butterfly")
Event.create(name: "50 Breast", distance: 50, stroke: "Breaststroke")
Event.create(name: "100 Breast", distance: 100, stroke: "Breaststroke")


puts "Creating Shirts"
Shirt.create(size: "Youth X-Small")
Shirt.create(size: "Youth Small")
Shirt.create(size: "Youth Medium")
Shirt.create(size: "Youth Large")
Shirt.create(size: "Youth X-Large")
Shirt.create(size: "Adult X-Small")
Shirt.create(size: "Adult Small")
Shirt.create(size: "Adult Medium")
Shirt.create(size: "Adult Large")
Shirt.create(size: "Adult X-Large")

puts "Creating Team"

puts "Creating User"
@jamie = User.create( email: "jamie.thomason@gmail.com", admin: true, password: "password", password_confirmation: "password")

puts "Creating Season"
@season = Season.create( start_date: "1-01-2012", end_date: "31-01-2012", meet_date: "29-01-2012")

puts "Creating Family"
@family = Family.create( name: "Thomason", c1_first_name: "James", c1_last_name: "Thomason", c1_relationship: "Father", c1_home_phone: "9135551212", c1_work_phone: "9135551313", c1_mobile_phone: "9135551414", c1_first_name: "Jennifer", c1_last_name: "Thomason", c1_relationship: "Mother", c1_home_phone: "9135551515", c1_work_phone: "9135551616", c1_mobile_phone: "9135551717", emergency_contact: "Nana 9135551000 nana@nana.com", user_id: @jamie.id)

puts "Creating Swimmers"
Swimmer.create(first_name: "Megan", last_name: "Thomason", gender: "female", dob: "06-09-1999", shirt_size: "Adult Medium", family_id: @family.id )