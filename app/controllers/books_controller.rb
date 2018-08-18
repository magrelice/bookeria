class BooksController < ApplicationController
	# GET 
	def index
		@books = Book.all #lista de todos os livros do banco de dados 
	end

	# GET 
	def new 
		@book = Book.new #criando um objeto do tipo book
	end	

	# POST	
	def create 
		@book = Book.new(books_params) # crio um objeto com os dados que vieram do usuário 
		@book.save # salvo no banco de dados e ele vai criar um ID no banco de dados 


		redirect_to @book
	end

	# GET 
	def show 
	  @book = Book.find(params[:id])
	end
	  
	private 

	def books_params 
		params.require( :book).permit(:title, :author, :genre, :year)
	end	
end