class BooksController < ApplicationController

  def index
    @legend = Legend.find(params[:legend_id])
    @books = @legend.books
  end

  def show
  end

  def new
    @legend = Legend.find(params[:legend_id])
    @book = @legend.books.build
  end

  def create
      @legend = Legend.find(params[:legend_id])
      @book = @legend.books.create(book_params)
      if @book.save
        flash[:success] = "New book has been added"
        redirect_to new_legend_book_path(@legend)
      else  
        flash[:error] = "EPIC FAIL"
        redirect_to root_path 
      end 
  end

  def edit
    @legend = Legend.find(params[:legend_id])
    @book = Book.find(params[:id])
  end

  def update
    @legend = Legend.find(params[:legend_id])
    @book = @legend.books.find(params[:id])
    @book.update(book_params)
    redirect_to legend_books_path(@legend, @book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy 
    flash[:notice] = "Book destroyed"
    redirect_to root_path
  end
end

    private 

    def book_params 
      params.require(:book).permit(:title, :description, :image, :link, :legend_id)
    end 