class ApplicationController < ActionController::Base

# before_action :venue_authorized
# before_action :artist_authorized
helper_method :current_venue_user
helper_method :current_artist_user
helper_method :venue_logged_in?
helper_method :artist_logged_in?

    def current_venue_user    
        Venue.find_by(id: session[:venue_id])  
    end

    def current_artist_user    
        LocalArtist.find_by(id: session[:artist_id])  
    end

    def venue_logged_in?    
        !current_venue_user.nil?  
    end

    def artist_logged_in?    
        !current_artist_user.nil?  
    end

    def venue_authorized
        redirect_to '/venue-welcome' unless venue_logged_in?
    end

    def artist_authorized
        redirect_to '/artist-welcome' unless artist_logged_in?
    end


end
