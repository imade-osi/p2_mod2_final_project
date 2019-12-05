class AddTitleToAgencyArtistSong < ActiveRecord::Migration[6.0]
  def change
    add_column :agency_artist_songs, :title, :string
  end
end
