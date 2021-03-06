Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
 :registrations => 'users/registrations',
 :sessions => 'users/sessions',
 :passwords     => 'users/passwords'
 
  }
  resources :posts 
  root 'home#top'
  resources :home, only: [:top]
  resources :users, only: [:show] do
  member do
   get 'likes'
   get 'likes_events'
   get 'events'
  end
 end
  resources :areas, only: [:create]
  post 'likes/:post_id/create' => 'likes#create'
  delete 'likes/:post_id/destroy' => 'likes#destroy'
  post 'likes/:event_id/create_event' => 'likes#create_event'
  delete 'likes/:event_id/destroy_event' => 'likes#destroy_event'
  resources :events 
 resources :messages, only: [:create, :destroy]
 resources :chats, only:[:index, :show, :create, :destroy]
 #resources :my_areas, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
