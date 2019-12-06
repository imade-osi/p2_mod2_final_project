class VenueSessionsController < ApplicationController

# skip_before_action :venue_authorized, only: [:new, :create, :welcome]
  
def new 

end 

def welcome 
   @venue = Venue.find_by(id: session[:venue_id])
end 

def create
      venue = Venue.find_by(username: params[:session][:username])
      if venue && venue.authenticate(params[:session][:password])
         session[:venue_id] = venue.id
         redirect_to venue
      else
         flash[:errors] = "\t username or password doesn't match!!!\n"
        #  venue.errors.full_messages
         redirect_to '/venue-login'
      end

  end

  def destroy_venue
    session.delete(:venue_id)
    redirect_to '/'
  end

end