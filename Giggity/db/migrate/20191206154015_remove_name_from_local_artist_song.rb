class RemoveNameFromLocalArtistSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :local_artist_songs, :name, :string
  end
end
