class RemoveAgencyIdFromAgencyArtist < ActiveRecord::Migration[6.0]
  def change

    remove_column :agency_artists, :agency_id, :string
  end
end
