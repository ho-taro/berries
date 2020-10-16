class Nutrition < ApplicationRecord
  belongs_to :user
  has_many :favorites, foreign_key: true, dependent: :destroy
  has_many :fav_users, through: :favorites, source: :user

  with_options presence: true do
    validates :ingredient
    validates :calorie, numericality: { only_integer: true }
    validates :protein, numericality: { only_integer: true }
    validates :lipid, numericality: { only_integer: true }
    validates :carbohydrate, numericality: { only_integer: true }
    validates :potassium, numericality: { only_integer: true }
    validates :calcium, numericality: { only_integer: true }
    validates :iron, numericality: { only_integer: true }
    validates :vitamin_a, numericality: { only_integer: true }
    validates :vitamin_b1, numericality: { only_integer: true }
    validates :vitamin_b2, numericality: { only_integer: true }
    validates :vitamin_c, numericality: { only_integer: true }
    validates :salt_equivalent, numericality: { only_integer: true }
  end

  def self.search(search)
    if search != ""
      Nutrition.where('ingredient LIKE(?)', "%#{search}%")
    else
      Nutrition.all
    end
  end
end
