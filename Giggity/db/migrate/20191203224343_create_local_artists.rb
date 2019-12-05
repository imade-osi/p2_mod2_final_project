class CreateLocalArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :local_artists do |t|
      t.string :genre
      t.string :artist_name
      t.string :username
      t.string :password_digest
      t.float  :rating
      t.float  :bankroll
      t.integer :zipcode
      t.timestamps
    end
  end
end
