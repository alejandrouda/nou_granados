class AddColumnsToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :name_en, :string
    add_column :menus, :name_fr, :string
    add_column :menus, :name_cat, :string
  end
end
