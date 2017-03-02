class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date_time
      t.string :description

      t.timestamps
    end
  end
end
