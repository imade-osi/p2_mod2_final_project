class CreateLocalArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :local_artists do |t|
      t.string :genre
      t.string :name
      t.integer :rating
      t.integer :bankroll

      t.timestamps
    end
  end
end
