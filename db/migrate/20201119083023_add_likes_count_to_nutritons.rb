class AddLikesCountToNutritons < ActiveRecord::Migration[6.0]
  def change
    add_column :nutritions, :likes_count, :integer
  end
end
