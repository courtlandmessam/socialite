class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.text :content
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
