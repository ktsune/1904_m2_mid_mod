class Book < ApplicationRecord
  validates_presence_of :title, :pages, :publication_year

  has_many :author_books
  has_many :authors, through: :author_books

  def self.book_titles
    # binding.pry
    self.joins(:authors).pluck(:title)
  end

  def self.average_pages
    self.average('pages')
  end
end
