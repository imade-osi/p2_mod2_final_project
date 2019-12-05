class Venue < ApplicationRecord
    has_many :agency_gigs
    has_many :agencies, through: :agency_gigs
     
    has_secure_password
     
     validates :username, presence: true, uniqueness: true

end
