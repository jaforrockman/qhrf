Rails.application.routes.draw do
  

  
  resources :ayats
  root to: 'pages#home'
  get '/about' => 'pages#about'

  resources :books
  	get 'books/params[:id]/bookbackend' => 'books#bookbackend'
  
  resources :surahs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
