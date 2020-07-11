class AddColumnsToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :starter, :boolean
    add_column :meals, :tapa, :boolean
    add_column :meals, :main, :boolean
    add_column :meals, :fish, :boolean
    add_column :meals, :meat, :boolean
    add_column :meals, :dessert, :boolean
  end
end
