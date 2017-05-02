class AddSubtitleToApp < ActiveRecord::Migration
  def change
    add_column :apps, :subtitle, :string
  end
end
