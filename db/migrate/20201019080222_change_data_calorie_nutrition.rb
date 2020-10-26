class ChangeDataCalorieNutrition < ActiveRecord::Migration[6.0]
  def change
    change_column :nutritions, :calorie, :float
  end
end
