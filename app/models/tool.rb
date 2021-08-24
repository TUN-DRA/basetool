class Tool < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :maker

  with_options presence: true do
    validates :image
    validates :tool_name
    validates :maker_id
    validates :category_id
    validates :detail
    validates :evaluation_id
  end
end
