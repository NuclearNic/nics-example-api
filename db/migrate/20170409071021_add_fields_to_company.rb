class AddFieldsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :logo_image, :string
    add_column :companies, :layout_skin, :string
    add_column :companies, :layout_style, :string
  end
end
