class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :link_url
      t.boolean :show_in_menu
      t.string :layout_template
      t.boolean :published
      t.integer :app_id

      t.timestamps
    end
    add_index :pages, :app_id
  end
end
