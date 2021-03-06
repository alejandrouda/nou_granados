class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :price
      t.string :price_racion
      t.text :description
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
