class AddFaIconToPage < ActiveRecord::Migration
  def change
    add_column :pages, :fa_icon, :string
  end
end
