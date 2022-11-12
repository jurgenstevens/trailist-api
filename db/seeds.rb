# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([{ name: "Dzenita" }, { name: "Gari" }, { name: "Matt" }])

Trail.create(trail_name: "Capitan Peak via Summit Trail", location: "NM" , completed: false, user_id: 1)

Trail.create(trail_name: "Big Carp River Trail", location: "MI" , completed: false, user_id: 2)

Trail.create(trail_name: "Old Cloudcroft Trail Loop", location: "NM" , completed: true, user_id: 1)

Trail.create(trail_name: "Rocky Bluff Trail", location: "IL" , completed: false, user_id: 3)