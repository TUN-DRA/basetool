class Tool < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :tool_name
    validates :maker_id
    validates :category_id
    validates :detail
    validates :evaluation_id
  end
end
