class CreateMealsIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :meals_ingredients do |t|
      t.string :name
      t.string :icon
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
