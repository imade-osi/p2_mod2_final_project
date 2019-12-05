class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :username
      t.string :password_digest
      t.string :venue_name
      t.float :bankroll
      t.integer :zipcode
      
      t.timestamps
    end
  end
end
