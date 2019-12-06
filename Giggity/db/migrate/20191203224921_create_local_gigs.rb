class CreateLocalGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :local_gigs do |t|
      t.string :date
      t.float :compensation
      t.belongs_to :venue
      t.belongs_to :local_artist
      
      t.timestamps
    end
  end
end
