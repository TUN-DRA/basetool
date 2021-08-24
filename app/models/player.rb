class Player < ApplicationRecord
  belongs_to :user, optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :pitching
  belongs_to :batting
  belongs_to :prefecture
end
