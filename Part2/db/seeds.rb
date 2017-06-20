# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(user_name: "Terrance")
user2 = User.create(user_name: "Andrew")
user3 = User.create(user_name: "Chris")

# art1 = Artwork.create(title: "King Kong",image_url: "yahoo.com", user1.id)
# art2 = Artwork.create(title: "Sunset",image_url: "google.com", user2.id)
# art3 = Artwork.create(title: "Dude, wheres my car?", image_url: "google.com", user2.id)
