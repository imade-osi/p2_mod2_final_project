class CreateLocalArtistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :local_artist_songs do |t|
      t.string :name
      t.belongs_to :local_artist
      t.timestamps
    end
  end
end
