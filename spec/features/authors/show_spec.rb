require 'rails_helper'

RSpec.describe 'Visitor' do
  describe 'visit /authors/:id' do
    before :each do
      @david_wong = Author.create!(name: 'David Wong')
      @stephen_king = Author.create!(name: 'Stephen King')
      @john_dies = @david_wong.books.create!(title: "John Dies at the End", pages: 700, publication_year: 2006)
      @the_shining = @stephen_king.books.create!(title: "The Shining", pages: 500, publication_year: 1980)
      @the_dead_zone = @stephen_king.books.create!(title: "The Dead Zone", pages: 800, publication_year: 1979)
    end

    it 'I see an author displayed on the page' do
      visit "/authors/#{@david_wong.id}"

      expect(page).to have_content(@david_wong.name)

      visit "/authors/#{@stephen_king.id}"

      expect(page).to have_content(@stephen_king.name)
    end

    it 'I see the book titles and average number of pages for that author displayed on the page' do
      visit "/authors/#{@david_wong.id}"

      expect(page).to have_content(@david_wong.books.book_titles)
      expect(page).to have_content(@david_wong.books.average_pages)
    end
  end
end
