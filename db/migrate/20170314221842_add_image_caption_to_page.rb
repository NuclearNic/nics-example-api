class AddImageCaptionToPage < ActiveRecord::Migration
  def change
    add_column :pages, :image_caption, :string
  end
end
