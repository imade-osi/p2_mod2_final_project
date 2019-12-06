class LocalArtistSongsController < ApplicationController
    def show
        @local_artist_song = LocalArtistSong.find(params[:id])
    end
end
