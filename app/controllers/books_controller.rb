class BooksController < ApplicationController

  def show
  @book = Book.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
  end

# 投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if
      @book.save
      redirect_to book_path(@book)
    else
      @user = current_user
      @books = Book.all
      render :index
    end
  end

  def edit

  end

  def update

  end


  def destroy

    @book = Book.find(params[:id])
   if @book.destroy
      flash[:notice]="Book was successfully destroyed."
    redirect_to books_path
   end
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end