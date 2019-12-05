class VenuesController < ApplicationController
    before_action :set_venue, only: [:show]
     def new
       @venue = Venue.new
    end

    def create
       @venue = Venue.new(venue_params)
       @venue.save

       if @venue.valid?
            session[:venue_id] = @venue.id
            redirect_to @venue
   
        end
    end 

    def show 
        
    end 

    private 

    def set_venue
        @venue = Venue.find(params[:id])
    end 

    def venue_params
        params.require(:venue).permit(:username, :password, :venue_name, :bankroll, :zipcode)
    end 

end
