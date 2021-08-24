class Batting < ActiveHash::Base
  self.data = [
    { id: 1, name: ' ' },
    { id: 2, name: '右打ち' },
    { id: 3, name: '左打ち' },
    { id: 4, name: '両打ち' }
  ]

  include ActiveHash::Associations
  has_many :players

end