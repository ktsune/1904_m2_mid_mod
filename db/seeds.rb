# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Book.destroy_all

david_wong = Author.create!(name: 'David Wong')
stephen_king = Author.create!(name: 'Stephen King')

john_dies = Book.create!(title: "John Dies at the End", pages: 600, publication_year: 2006)
the_shining = Book.create!(title: "The Shining", pages: 700, publication_year: 1980)
the_dead_zone = Book.create!(title: "The Dead Zone", pages: 800, publication_year: 1979)

# john_dies = david_wong.books.create!(title: "John Dies at the End", pages: 700, publication_year: 2006)
# thi_shining = stephen_king.books.create!(title: "The Shining", pages: 500, publication_year: 1980)
# the_dead_zone = stephen_king.books.create!(title: "The Dead Zone", pages: 800, publication_year: 1979)

john_dies.authors << david_wong
the_shining.authors << stephen_king
the_dead_zone.authors << stephen_king
#
# david_wong.books << john_dies
# stephen_king.books << the_shining
# stephen_king.books << the_dead_zone
