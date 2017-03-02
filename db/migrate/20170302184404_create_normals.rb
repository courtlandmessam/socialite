class CreateNormals < ActiveRecord::Migration[5.0]
  def change
    create_table :normals do |t|

      t.timestamps
    end
  end
end
