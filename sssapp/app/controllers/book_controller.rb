class BookController < ApplicationController
  def index
    render :json => Book.all
  end

  def show
    render :json => Book.find(params[:id])
  end

  def create
    book = Book.new book_params
    book.user = current_user
    book.save
    render :json => book
  end

  def destroy
    Book.find(params[:id]).destroy
    render :json => ""
  end

  def update
    @book = Book.find(params[:id])
  end

  def lookup
   @isbn = params[:id]
   require 'googlebooks'
   books = GoogleBooks.search('isbn:'+@isbn)  #9781443411080') 
   book = books.first
   render :json => book  
  end

  def mybook
    render :json => current_user.books
  end

  def userList
      render :json => User.all
  end

  def user
      render :json => User.find(params[:id]).books
  end

  private

    def book_params
      params.require(:book).permit(:isbn, :title, :authors, :publisher, :description, :image_link, :year, :categories, :language)
    end

end
