class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :venue
      t.string :gps
      t.integer :app_id
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.string :image

      t.timestamps
    end
    add_index :schedules, :app_id
  end
end
