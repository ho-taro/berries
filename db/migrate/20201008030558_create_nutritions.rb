class CreateNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritions do |t|
      t.string  :ingredient
      t.integer :calorie
      t.integer :protein
      t.integer :lipid
      t.integer :carbohydrate
      t.timestamps
    end
  end
end
