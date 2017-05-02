class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :body
      t.integer :app_id
      t.string :cover_image

      t.timestamps
    end
    add_index :galleries, :app_id
  end
end
