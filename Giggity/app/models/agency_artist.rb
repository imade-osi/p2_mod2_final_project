class AgencyArtist < ApplicationRecord
    has_many :agency_artist_songs
    belongs_to :agency 
end
