class RemoveAgencyFromAgencyArtist < ActiveRecord::Migration[6.0]
  def change

    remove_column :agency_artists, :agency, :integer
  end
end
