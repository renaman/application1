class BooksController < ApplicationController
	def create
		@book = Book.new(book_params)
		if @book.save
			flash[:notice] = "Book was successfully created."
		    redirect_to book_path(@book.id)
		else
			@books = Book.all
			render action: :index
		end
	end
	def index
		@books = Book.all
		@book = Book.new
		@books = Book.all.order(created_at: :desc)
	end
	def show
		@book = Book.find(params[:id])
	end
	def edit
		@book = Book.find(params[:id])
	end
	def update
		book = Book.find(params[:id])
		book.update(book_params)
		redirect_to book_path(book.id)
	end

	def destroy
		book = Book.find(params[:id])
		if book.destroy
		   flash[:notice] = "Book was successfully destroyed."
		   redirect_to books_path
		else
			render action: :new
		end
	end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
