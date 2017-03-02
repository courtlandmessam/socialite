class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :users, :type, :is_manager?
  end
end
