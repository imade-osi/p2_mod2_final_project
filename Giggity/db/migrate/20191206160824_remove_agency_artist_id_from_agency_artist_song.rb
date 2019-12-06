class RemoveAgencyArtistIdFromAgencyArtistSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :agency_artist_songs, :agency_artist_id, :string
  end
end
