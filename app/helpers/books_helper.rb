module BooksHelper
	def currentbook
		@currentbook = params[:id]
	end
end
