class AddImageBase64ToPage < ActiveRecord::Migration
  def change
    add_column :pages, :image_base_64, :text
  end
end
