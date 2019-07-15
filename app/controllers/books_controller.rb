class BooksController < ApplicationController
  def index
    @books = Book.all
    # binding.pry
    # @book = Book.find(params[:id])
    @authors = @books.map do |book|
      book.authors
    end
  end
end
