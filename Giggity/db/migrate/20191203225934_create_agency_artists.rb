class CreateAgencyArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_artists do |t|
      t.string :name
      t.string :genre
      t.float :fee

      t.timestamps
    end
  end
end
