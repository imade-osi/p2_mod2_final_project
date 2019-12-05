class CreateAgencyGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :agency_gigs do |t|
      t.string :date
      t.float :compensation

      t.timestamps
    end
  end
end
