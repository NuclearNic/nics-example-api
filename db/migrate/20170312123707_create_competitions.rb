class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.integer :app_id
      t.string :competition_url
      t.string :image
      t.string :question
      t.text :description
      t.datetime :closing_date
      t.boolean :published

      t.timestamps
    end
    add_index :competitions, :app_id
  end
end
