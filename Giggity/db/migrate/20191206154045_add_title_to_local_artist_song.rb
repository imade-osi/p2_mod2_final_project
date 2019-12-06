class AddTitleToLocalArtistSong < ActiveRecord::Migration[6.0]
  def change
    add_column :local_artist_songs, :title, :string
  end
end
