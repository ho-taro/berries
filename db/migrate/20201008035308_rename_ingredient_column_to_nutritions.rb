class RenameIngredientColumnToNutritions < ActiveRecord::Migration[6.0]
  def change
    rename_column :nutritions, :ingredient, :ingredient_id
  end
end
