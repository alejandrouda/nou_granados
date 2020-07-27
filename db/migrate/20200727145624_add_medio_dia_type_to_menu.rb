class AddMedioDiaTypeToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :medio_dia_type, :boolean
  end
end
