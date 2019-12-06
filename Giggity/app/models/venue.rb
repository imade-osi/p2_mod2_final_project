class Venue < ApplicationRecord
    has_many :agency_gigs
    has_many :local_gigs 
    has_many :agencies, through: :agency_gig, dependent: :destroy
    has_many :local_artists, through: :agency, dependent: :destroy
    has_secure_password
     
     validates :username, presence: true, uniqueness: true

end
