class Nutrition < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :fav_users, through: :favorites, source: :user

  NUTRITION_CODE_REGEX = /\A[-]?[0-9]+(\.[0-9]+)?\z/.freeze

  with_options presence: true do
    validates :ingredient
    validates :calorie, format: { with: NUTRITION_CODE_REGEX }
    validates :protein, format: { with: NUTRITION_CODE_REGEX }
    validates :lipid, format: { with: NUTRITION_CODE_REGEX }
    validates :carbohydrate, format: { with: NUTRITION_CODE_REGEX }
    validates :potassium, format: { with: NUTRITION_CODE_REGEX }
    validates :calcium, format: { with: NUTRITION_CODE_REGEX }
    validates :iron, format: { with: NUTRITION_CODE_REGEX }
    validates :vitamin_a, format: { with: NUTRITION_CODE_REGEX }
    validates :vitamin_b1, format: { with: NUTRITION_CODE_REGEX }
    validates :vitamin_b2, format: { with: NUTRITION_CODE_REGEX }
    validates :vitamin_c, format: { with: NUTRITION_CODE_REGEX }
    validates :dietary_fiber, format: { with: NUTRITION_CODE_REGEX }
  end

  def self.search(search)
    if search != ""
      Nutrition.where('ingredient LIKE(?)', "%#{search}%")
    else
      Nutrition.all
    end
  end
end
