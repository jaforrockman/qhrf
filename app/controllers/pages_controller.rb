class PagesController < ApplicationController
  def home

  end
  
  def library
  	@books=Book.all
  end
  
  def search_page
  	@books=Book.all
  	
  end

  def about
  end
end
