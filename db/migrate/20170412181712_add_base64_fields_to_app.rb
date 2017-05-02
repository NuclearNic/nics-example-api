class AddBase64FieldsToApp < ActiveRecord::Migration
  def change
    add_column :apps, :menu_banner_image_base_64, :text
    add_column :apps, :menu_icon_image_base_64, :text
    add_column :apps, :menu_footer_image_base_64, :text
  end
end
