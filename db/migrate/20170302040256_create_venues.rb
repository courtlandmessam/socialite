class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :title
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
