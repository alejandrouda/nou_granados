class CreateDrinksIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks_ingredients do |t|
      t.string :name
      t.string :icon
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
