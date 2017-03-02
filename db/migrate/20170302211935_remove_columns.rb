class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :users, :user
  end
end
