class AddMedioDiaTypeToMeal < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :medio_dia_type, :boolean
  end
end
