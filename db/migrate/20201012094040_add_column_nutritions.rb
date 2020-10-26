class AddColumnNutritions < ActiveRecord::Migration[6.0]
  def change
    add_column :nutritions, :potassium, :integer
    add_column :nutritions, :calcium, :integer
    add_column :nutritions, :iron, :integer
    add_column :nutritions, :vitamin_a, :integer
    add_column :nutritions, :vitamin_b1, :integer
    add_column :nutritions, :vitamin_b2, :integer
    add_column :nutritions, :vitamin_c, :integer
    add_column :nutritions, :dietary_fiber, :integer
  end
end
