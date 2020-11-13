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

  def self.guest
    find_or_create_by!(nickname: 'かんたんログイン', email: 'guest2@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
