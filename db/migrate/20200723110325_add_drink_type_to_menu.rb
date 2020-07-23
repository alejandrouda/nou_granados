class AddDrinkTypeToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :drink_type, :boolean
  end
end
