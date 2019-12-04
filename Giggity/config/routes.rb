Rails.application.routes.draw do
  root :to => 'home#user_type', :as => 'main_menu' 
  get '/venue_user', :to => 'venue_user#show', :as => 'venue_user' 
  get '/artist_user', :to => 'artist_user#show', :as => 'artist_user' 
  get 'venue_login', to: 'sessions#new'
  post 'venue_login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  
  resources :agency_artist_songs
  resources :local_artist_songs
  resources :agency_artists
  resources :managers
  resources :agency_gigs
  resources :local_gigs
  resources :agencies
  resources :local_artists
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
