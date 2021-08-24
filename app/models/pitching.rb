class Pitching < ActiveHash::Base
  self.data = [
    { id: 1, name: ' ' },
    { id: 2, name: '右投げ' },
    { id: 3, name: '左投げ' }
  ]

  include ActiveHash::Associations
  has_many :players

end