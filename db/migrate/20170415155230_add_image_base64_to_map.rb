class AddImageBase64ToMap < ActiveRecord::Migration
  def change
    add_column :maps, :image_base_64, :text
  end
end
