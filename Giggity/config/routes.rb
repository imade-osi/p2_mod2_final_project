Rails.application.routes.draw do
  root :to => 'home#user_type'
  
  ###### Venue User Routes #############################
   get 'venue-login', to: 'venue_sessions#new'
   post 'venue-login', to: 'venue_sessions#create'
   post 'venue-welcome', to: 'venue_sessions#welcome', as: 'venue_user'
   get 'venue-authorized', to: 'venue_sessions#venuepage_requires_login'
   ######################################################
   
  ###### Artist User Routes ############################
   get 'artist-login', to: 'artist_sessions#new'
   post 'artist-login', to: 'artist_sessions#create'
   post 'artist-welcome', to: 'artist_sessions#welcome', as: 'artist_user'
   get 'artist-authorized', to: 'artist_sessions#artistpage_requires_login'
   ######################################################

  
  get 'local-artist-search', to: 'local_search#newsearch', as: 'getlocalsearch'
  post 'local-artist-search', to: 'local_search#newsearch', as: 'localsearch'
  post 'local-artist-search', to: 'local_search#results', as: 'localresults'
  post 'offer-gigs', to: 'gigs#offer', as: 'offergigs' 
  post 'show-gigs', to: 'gigs#show', as: 'showgigs' 
  
  
  delete "/logout", to: "venue_sessions#destroy_venue", as: "venuelogout"
  delete "/artist-welcome", to: "artist_sessions#destroy_artist", as: "artistlogout"
  

  resources :agency_artist_songs
  resources :local_artist_songs
  resources :agency_artists
  resources :managers
  resources :agency_gigs, only: [:show]
  resources :local_gigs
  resources :agencies
  resources :local_artists
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
