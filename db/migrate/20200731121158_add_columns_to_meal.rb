class AddColumnsToMeal < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :name_en, :string
    add_column :meals, :name_fr, :string
    add_column :meals, :name_cat, :string
    add_column :meals, :description_en, :string
    add_column :meals, :description_fr, :string
    add_column :meals, :description_cat, :string
  end
end
