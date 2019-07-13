# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

david_wong = Author.create!(name: 'David Wong')
stephen_king = Author.create!(name: 'Stephen King')

john_dies_at_the_end = (title: "John Dies at the End", pages: 600, publication_year: 2006)
the_shining = (title: "The Shining", pages: 700, publication_year: 1980)
the_dead_zone = (title: "The Dead Zone", pages: 800, publication_year: 1979)
