class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :title
      t.string :image
      t.string :kml
      t.integer :app_id

      t.timestamps
    end
    add_index :maps, :app_id
  end
end
