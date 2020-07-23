class AddPriceGlassToDrink < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :price_glass, :string
  end
end
