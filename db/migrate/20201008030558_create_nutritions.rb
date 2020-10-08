class CreateNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritions do |t|

      t.timestamps
    end
  end
end
