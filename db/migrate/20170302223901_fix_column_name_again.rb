class FixColumnNameAgain < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :users, :is_manager?, :is_manager
  end
end
