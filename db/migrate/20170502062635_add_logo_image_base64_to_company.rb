class AddLogoImageBase64ToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :logo_image_base_64, :text
  end
end
