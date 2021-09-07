class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  has_one :player
  has_many :tools
  has_many :comments
  has_many :favorites, dependent: :destroy

  def already_favorited?(tool)
    self.favorites.exists?(tool_id: tool.id)
  end
end
