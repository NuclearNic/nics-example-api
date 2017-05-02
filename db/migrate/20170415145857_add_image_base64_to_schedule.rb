class AddImageBase64ToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :image_base_64, :text
  end
end
