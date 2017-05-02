class AddImageBase64ToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_base_64, :text
  end
end
