class AgencyArtistsController < ApplicationController
    def show
        @agency_artist = AgencyArtist.find(params[:id])
    end
end
