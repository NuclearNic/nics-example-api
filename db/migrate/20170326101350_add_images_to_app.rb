class AddImagesToApp < ActiveRecord::Migration
  def change
    add_column :apps, :menu_banner_image, :string
    add_column :apps, :menu_icon_image, :string
    add_column :apps, :menu_footer_image, :string
  end
end
