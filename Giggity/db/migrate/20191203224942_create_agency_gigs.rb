class CreateAgencyGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_gigs do |t|
      t.string :date
      t.integer :compensation

      t.timestamps
    end
  end
end
