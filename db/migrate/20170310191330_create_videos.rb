class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :youtube_url
      t.string :image
      t.integer :app_id

      t.timestamps
    end
    add_index :videos, :app_id
  end
end
