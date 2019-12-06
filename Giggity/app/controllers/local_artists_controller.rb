class LocalArtistsController < ApplicationController
   # skip_before_action :artist_authorized, only: [:new, :create]
   
   def new
       @artist = LocalArtist.new
    end

   def index
      if params[:zipcode] != ''
            session[:search_results] = request.url
            @artists = LocalArtist.where(zipcode: params[:zipcode])
          
        else
           
            @artists = LocalArtist.all
        end
   end  

    def create
       @artist = LocalArtist.create(params.require(:venue).permit(:user_name,        
       :password, :artist_name, :genre, :bankroll))
       session[:artist_id] = @artist.id
       redirect_to 'artist-welcome'
    end


   def artist_params
        params.require(:venue).permit(:username,        
       :password, :artist_name, :genre, :bankroll, :zipcode, :search)
   end 

   def show
      @artist = LocalArtist.find(params[:id])
      @venue = Venue.find_by(id: session[:venue_id])
   end 

end
