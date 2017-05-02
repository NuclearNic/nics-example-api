class AddFieldsToApp < ActiveRecord::Migration
  def change
    add_column :apps, :email, :string
    add_column :apps, :telephone, :string
    add_column :apps, :address, :string
  end
end
