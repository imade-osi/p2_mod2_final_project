class Agency < ApplicationRecord
    has_many :agency_gigs
    has_many :agency_artists
    has_many :agency_artist_songs, through: :agency_artist
end
