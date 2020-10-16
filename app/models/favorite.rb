class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :nutrition
  validates_uniqueness_of :nutrition_id, scope: :user_id
end
