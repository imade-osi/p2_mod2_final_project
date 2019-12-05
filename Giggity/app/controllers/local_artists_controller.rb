class LocalArtistsController < ApplicationController
   skip_before_action :artist_authorized, only: [:new, :create]
   
   def new
       @artist = LocalArtist.new
    end

    def create
       @artist = LocalArtist.create(params.require(:venue).permit(:user_name,        
       :password, :artist_name, :genre, :bankroll))
       session[:artist_id] = @artist.id
       redirect_to 'artist-welcome'
    end


    def artist_params
        params.require(:venue).permit(:user_name,        
       :password, :artist_name, :genre, :bankroll, :zipcode))
     end 

end
