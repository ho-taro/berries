class AddUserIdNutritions < ActiveRecord::Migration[6.0]
  def change
    add_column :nutritions, :user_id, :integer
  end
end
