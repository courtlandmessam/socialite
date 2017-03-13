class CreateClaimVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :claim_venues do |t|
      t.string :name
      t.string :venue
      t.string :email
      t.string :phone_number
      t.text :other

      t.timestamps
    end
  end
end
