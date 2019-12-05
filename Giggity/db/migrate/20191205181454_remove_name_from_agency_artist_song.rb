class RemoveNameFromAgencyArtistSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :agency_artist_songs, :name, :datatype
  end
end
