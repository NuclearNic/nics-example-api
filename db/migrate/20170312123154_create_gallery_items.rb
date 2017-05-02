class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.string :title
      t.string :image
      t.text :body
      t.integer :gallery_id

      t.timestamps
    end
    add_index :gallery_items, :gallery_id
  end
end
