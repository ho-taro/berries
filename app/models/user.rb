class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :nutritions
  has_many :favorites, foreign_key: true, dependent: :destroy
  has_many :fav_nutritions, through: :favorites, source: :nutrition

  def already_favorited?(nutrition)
    Favorite.exists?(nutrition_id: nutrition.id)
  end
end
