class AddAgencyArtistIdToAgencyArtistSong < ActiveRecord::Migration[6.0]
  def change
    add_column :agency_artist_songs, :agency_artist_id, :integer
  end
end
