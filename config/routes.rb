Rails.application.routes.draw do
  

  
  resources :religions
 # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :ayats
  root to: 'pages#home'
  get '/library' => 'pages#library'
  get '/about' => 'pages#about'
  get '/search_page' => 'pages#search_page'

  resources :books
  	get 'books/id/read' => 'books#read'
  
  resources :surahs
  get '/search' => 'search#index'
  #resources :search, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
