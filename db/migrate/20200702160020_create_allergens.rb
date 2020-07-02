class CreateAllergens < ActiveRecord::Migration[6.0]
  def change
    create_table :allergens do |t|
      t.string :name
      t.string :icon
      t.references :meals, null: false, foreign_key: true

      t.timestamps
    end
  end
end
