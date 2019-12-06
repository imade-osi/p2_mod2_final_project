class AddLocalArtistIdToLocalArtistSong < ActiveRecord::Migration[6.0]
  def change
    add_column :local_artist_songs, :local_artist_id, :integer
  end
end
