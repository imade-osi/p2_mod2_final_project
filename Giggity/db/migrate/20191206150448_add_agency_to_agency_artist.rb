class AddAgencyToAgencyArtist < ActiveRecord::Migration[6.0]
  def change
    add_column :agency_artists, :agency, :string
  end
end
