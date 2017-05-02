class AddLiveViewToApp < ActiveRecord::Migration
  def change
    add_column :apps, :live_view, :string
  end
end
