class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :image
      t.boolean :published
      t.integer :app_id
      t.string :image_caption

      t.timestamps null: false
    end
  end
end
