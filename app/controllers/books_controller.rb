class BooksController < ApplicationController


  def index
    @books = Book.order(:price)

  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @count = Book.count
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash.now[:notice] = 'Book was successfully created.'
      redirect_to books_path
    else
      puts "Errors: #{@book.errors.full_messages}"
      flash[:notice] = 'Book could not be created.'
      redirect_to books_path
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = 'Book was successfully updated.'
      redirect_to books_path #book_path?
    else
      # edit action is NOT being called here
      # assign any instance variables needed
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    # no need to include if statement since there is no risk for bad data
    flash[:notice] = 'Book was successfully deleted.'
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(
      :title,
      :author,
      :price,
      :published_date,
      :publisher,
      :pages,
      :release_date)
  end


end
