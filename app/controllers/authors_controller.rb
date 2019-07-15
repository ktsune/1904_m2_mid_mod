class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    # binding.pry
    @books = @author.books
  end

end
