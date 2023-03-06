class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    # 1件だけ取り出すので単数形
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
