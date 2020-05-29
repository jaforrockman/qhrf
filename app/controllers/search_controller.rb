class SearchController < ApplicationController
	def index

	if params[:query].present?
     @ayats = Ayat.search(params[:query]).order("book_id ASC", "surah_id ASC")
     
   else
     @ayats = Ayat.all.order("book_id ASC", "surah_id ASC")
   end
 end
end
