class BookController < ApplicationController
  def index
    @books = Book.includes

    @books.each do |book| 
      @user = User.find(book.user_id)
      book.user = @user
    end

    #@books = Book.find(2, :include => [:user])
    render :json => @books
  end

  def show
    render :json => Book.find(params[:id])
  end

  def create
    book = Document.create! params
    render :json => book
  end

  def destroy
  end

  def update
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
end
