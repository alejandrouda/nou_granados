class AddColumnsToDrink < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :beer, :boolean
    add_column :drinks, :aperitive, :boolean
    add_column :drinks, :gin, :boolean
    add_column :drinks, :rum, :boolean
    add_column :drinks, :whiskey, :boolean
    add_column :drinks, :vodka, :boolean
  end
end
