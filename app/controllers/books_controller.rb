class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_list_books_path
    else
      render :"new"    
    end
  end

  def book_list
    @books = Book.all
  end  

  private
  def book_params
    params.require(:book).permit(:title,:price,:subjects_id,:description)
  end  
    
end
