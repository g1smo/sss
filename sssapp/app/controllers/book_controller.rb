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
    book = Book.create! params
    render :json => book
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    Book.find(params[:id]).destroy
  end

  def update
    @book = Book.find(params[:id])
  #  if @book.update_attributes(books_params) #
   # else
    #  render('edit')
    #end
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
