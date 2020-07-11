class AddMenuTypeToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :menu_type, :boolean
  end
end
