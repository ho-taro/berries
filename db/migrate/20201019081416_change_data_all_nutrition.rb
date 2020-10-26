class ChangeDataAllNutrition < ActiveRecord::Migration[6.0]
  def up
    change_column :nutritions, :protein, :float
    change_column :nutritions, :lipid, :float
    change_column :nutritions, :carbohydrate, :float
    change_column :nutritions, :potassium, :float
    change_column :nutritions, :calcium, :float
    change_column :nutritions, :iron, :float
    change_column :nutritions, :vitamin_a, :float
    change_column :nutritions, :vitamin_b1, :float
    change_column :nutritions, :vitamin_b2, :float
    change_column :nutritions, :vitamin_c, :float
    change_column :nutritions, :dietary_fiber, :float
    rename_column :nutritions, :dietary_fiber, :dietary_fiber
  end
end
