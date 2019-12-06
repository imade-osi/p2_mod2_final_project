class LocalArtist < ApplicationRecord
    has_many :local_artist_songs
    has_many :local_gigs 
    
    has_secure_password
    # validates :username, presence: true, uniqueness: true
    
    def self.search(search)
        where("zipcode LIKE ?", "%#{search}%") 
    end

 end
