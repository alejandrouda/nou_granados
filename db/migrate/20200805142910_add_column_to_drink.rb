class AddColumnToDrink < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :name_cat, :string
    add_column :drinks, :name_fr, :string
    add_column :drinks, :name_en, :string
    add_column :drinks, :description_en, :string
    add_column :drinks, :description_fr, :string
    add_column :drinks, :description_cat, :string
  end
end
