class AddImageBase64ToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :image_base_64, :text
  end
end
