class RemoveAppIdCodeFromApp < ActiveRecord::Migration
  def change
    remove_column :apps, :app_id_code, :string
  end
end
