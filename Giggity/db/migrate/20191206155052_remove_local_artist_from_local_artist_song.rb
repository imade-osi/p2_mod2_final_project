class RemoveLocalArtistFromLocalArtistSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :local_artist_songs, :local_artist, :string
  end
end
