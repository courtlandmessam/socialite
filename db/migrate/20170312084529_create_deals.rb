class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :title
      t.string :description
      t.time :start_time
      t.time :end_time
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
