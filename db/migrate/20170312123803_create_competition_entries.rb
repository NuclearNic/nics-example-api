class CreateCompetitionEntries < ActiveRecord::Migration
  def change
    create_table :competition_entries do |t|
      t.string :name
      t.string :answer
      t.string :phone
      t.string :email
      t.integer :competition_id

      t.timestamps
    end
    add_index :competition_entries, :competition_id
  end
end
