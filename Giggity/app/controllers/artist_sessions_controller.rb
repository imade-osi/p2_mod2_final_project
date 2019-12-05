class ArtistSessionsController < ApplicationController

# skip_before_action :artist_authorized, only: [:new, :create, :welcome]
  
def create
      @local_artist = LocalArtist.find_by(user_name: params[:user_name])
      if @local_artist && @local_artist.authenticate(params[:password])
         sessions[:local_artist_id] = @local_artist.id
         redirect_to '/artist-welcome'
      else
         redirect_to '/artist-login'
      end

  end

  def login

  end

  def page_requires_login

  end
end