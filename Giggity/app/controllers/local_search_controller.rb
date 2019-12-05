class LocalSearchController < ApplicationController

    def newsearch
        @artists = LocalArtist.all
        @venue = Venue.find_by(id: session[:venue_id])
    end 

    def results
        
    end 
end