class AgencyArtistSongsController < ApplicationController
    def show
        @agency_artist_song = AgencyArtistSong.find(params[:id])
    end
end
