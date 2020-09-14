# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all


julian = User.create(username: "jayastronomic")

note_one = Note.create(title: "Today' Thoughts", content: "I am ready to become a professional programmer" )
note_two = Note.create(title: "Grocery List", content: "I need to grab some a case of water and some snacks for the party" )
note_three = Note.create(title: "Crush", content: "I've been crushing on this chick recently and she is a real baddie")
note_four = Note.create(title: "Coding Assessment", content: "I am ready fot the coding assessment that assigned the class" )
note_five = Note.create(title: "Television", content: "I need a new television" )
