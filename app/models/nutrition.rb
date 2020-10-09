class Nutrition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ingredient

  validates :ingredient_id, numericality: { other_than: 0 }
end
