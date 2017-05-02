class AddImageBase64ToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :image_base_64, :text
  end
end
