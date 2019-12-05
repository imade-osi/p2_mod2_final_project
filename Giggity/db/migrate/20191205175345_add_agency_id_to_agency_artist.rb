class AddAgencyIdToAgencyArtist < ActiveRecord::Migration[6.0]
  def change
    add_column :agency_artists, :agency_id, :integer
  end
end
