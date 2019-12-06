class LocalGig < ApplicationRecord
    belongs_to :local_artist
    belongs_to :venue
end
