class AddPublishedToMap < ActiveRecord::Migration
  def change
    add_column :maps, :published, :boolean
  end
end
