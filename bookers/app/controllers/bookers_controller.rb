class BookersController < ApplicationController
  def top
  end

  def index
    @books= Book.all
    @book= Book.new
  end

  def new
  end

  def create
     book= Book.new(book_params)
  if book.save
    redirect_to "/bookers/#{book.id}"
    flash[:notice]="Book was success fully created"

  else
     redirect_to "/bookers"
     
  end
  end

  def show
    @book= Book.find(params[:id])
  end

  def edit
    @book= Book.find(params[:id])
  end

  def update
    book= Book.find(params[:id])
    book.update(book_params)
    redirect_to "/bookers/#{book.id}"
    flash[:notice]="Book was success fully updated"
  end

  def destroy
   book= Book.find(params[:id])
   book.destroy
   redirect_to bookers_path
   flash[:notice]="Book was successfully destroyed."
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end