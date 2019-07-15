require 'rails_helper'

RSpec.describe 'Visitor' do
  describe 'visits /authors' do
    before :each do
      @john_dies_at_the_end = Book.create!(title: "John Dies at the End", pages: 600, publication_year: 2006)
      @the_shining = Book.create!(title: "The Shining", pages: 700, publication_year: 1980)
      @the_dead_zone = Book.create!(title: "The Dead Zone", pages: 800, publication_year: 1979)
      @david_wong = @john_dies_at_the_end.authors.create!(name: 'David Wong')
      @stephen_king_1 = @the_shining.authors.create!(name: 'Stephen King')
      @stephen_king_2 = @the_dead_zone.authors.create!(name: 'Stephen King')
    end

    it 'I see info for all books displayed on the page' do
      visit books_path

      expect(page).to have_content(@john_dies_at_the_end.title)
      expect(page).to have_content(@the_shining.title)
      expect(page).to have_content(@the_dead_zone.title)
    end

    it 'I see a link to the author show page with authors name as link' do 
      visit books_path

      expect(page).to have_link(nil, href: "/authors/#{@david_wong.id}")
    end
  end
end
