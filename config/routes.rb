Rails.application.routes.draw do
  
  
  
  
  

  devise_for :users, :controllers => {
 :registrations => 'users/registrations',
 :sessions => 'users/sessions',
 :passwords     => 'users/passwords'
 
  }
  
  root 'home#top'
  resources :home, only: [:top]
  resources :posts
  resources :users, only: [:show]
  #collection do
   #get 'likes'
 #end
  
  resources :areas, only: [:create]
  resources :likes, only: [:create, :destroy]
  resources :events
 #resources :my_areas, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
