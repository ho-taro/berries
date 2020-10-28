class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :nutritions
  has_many :favorites, dependent: :destroy
  has_many :fav_nutritions, through: :favorites, source: :nutrition

  validates :nickname, presence: true, length: { maximum: 8 }

  def already_favorited?(nutrition, current_user)
    Favorite.exists?(user_id: current_user.id, nutrition_id: nutrition.id)
  end
end
