# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([{ name: "Dzenita" }, { name: "Gari" }, { name: "Matt" }])

Trail.create(trail_name: "Capitan Peak via Summit Trail", location: "NM", description: "Enjoy this 15.5-mile out-and-back trail near Capitan, New Mexico. Generally considered a challenging route, it takes an average of 8 h 44 min to complete. This trail is great for hiking, and it's unlikely you'll encounter many other people while exploring. The best times to visit this trail are March through November." , completed: false, user_id: 1)

Trail.create(trail_name: "Big Carp River Trail", location: "MI", description: "Get to know this 16.2-mile out-and-back trail near Ontonagon, Michigan. Generally considered a challenging route, it takes an average of 6 h 6 min to complete. This is a popular trail for backpacking, camping, and hiking, but you can still enjoy some solitude during quieter times of day. The best times to visit this trail are May through September." , completed: false, user_id: 2)

Trail.create(trail_name: "Old Cloudcroft Trail Loop", location: "NM", description: "Enjoy this 2.8-mile loop trail near Cloudcroft, New Mexico. Generally considered a moderately challenging route, it takes an average of 1 h 33 min to complete. This is a very popular area for hiking, running, and walking, so you'll likely encounter other people while exploring. The best times to visit this trail are May through November." , completed: true, user_id: 4)

Trail.create(trail_name: "Rocky Bluff Trail", location: "IL", description: "Enjoy this 1.9-mile loop trail near Carbondale, Illinois. Generally considered an easy route, it takes an average of 44 min to complete. This is a popular trail for hiking, but you can still enjoy some solitude during quieter times of day. The trail is open year-round and is beautiful to visit anytime." , completed: false, user_id: 3)