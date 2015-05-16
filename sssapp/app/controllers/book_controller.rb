class BookController < ApplicationController
  def index
    render :json => Book.all
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
end
