class AddColumnsToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :white, :boolean
    add_column :drinks, :red, :boolean
    add_column :drinks, :rose, :boolean
    add_column :drinks, :cava, :boolean
  end
end
