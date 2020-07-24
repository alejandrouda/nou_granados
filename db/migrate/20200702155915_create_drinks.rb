class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
