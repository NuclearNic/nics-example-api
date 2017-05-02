class CreateOrderedViewFields < ActiveRecord::Migration
  def change
    create_table :ordered_view_fields do |t|
      t.string :name_of_model #THESE MAY SOUND FUNNY BUT AT LEAST THEY DON'T CLASH WITH ACTIVE RECORD
      t.string :name_of_view
      t.text :model_fields, :default => []

      t.timestamps null: false
    end
  end
end
