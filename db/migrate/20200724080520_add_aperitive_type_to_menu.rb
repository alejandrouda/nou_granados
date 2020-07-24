class AddAperitiveTypeToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :aperitive_type, :boolean
  end
end
