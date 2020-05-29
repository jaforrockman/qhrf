class PagesController < ApplicationController
  def home
  	@books=Book.all
  end
  
  def search_page
  	@books=Book.all
  	
  end

  def about
  end
end
