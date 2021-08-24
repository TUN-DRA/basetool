class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :text, presence: true
end
