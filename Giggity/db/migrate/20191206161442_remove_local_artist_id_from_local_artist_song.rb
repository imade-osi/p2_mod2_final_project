class RemoveLocalArtistIdFromLocalArtistSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :local_artist_songs, :local_artist_id, :string
  end
end
