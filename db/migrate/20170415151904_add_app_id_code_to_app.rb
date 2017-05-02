class AddAppIdCodeToApp < ActiveRecord::Migration
  def change
    add_column :apps, :app_id_code, :string
  end
end
