class CreateAgencyArtistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_artist_songs do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
