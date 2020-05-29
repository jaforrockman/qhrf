Rails.application.routes.draw do
  

  
 # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :ayats
  root to: 'pages#home'
  get '/about' => 'pages#about'
  get '/search_page' => 'pages#search_page'

  resources :books
  	get 'books/params[:id]/bookbackend' => 'books#bookbackend'
  
  resources :surahs
  get '/search' => 'search#index'
  #resources :search, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
