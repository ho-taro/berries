class Nutrition < ApplicationRecord
  with_options presence: true do
    validates :ingredient
    validates :calorie, numericality: { only_integer: true }
    validates :protein, numericality: { only_integer: true }
    validates :lipid, numericality: { only_integer: true }
    validates :carbohydrate, numericality: { only_integer: true }
  end
end
