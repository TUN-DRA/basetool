class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'グラブ・ミット' },
    { id: 3, name: 'バット' },
    { id: 4, name: 'スパイク・シューズ' },
    { id: 5, name: 'ウェア' },
    { id: 6, name: '手袋' },
    { id: 7, name: '防具' },
    { id: 8, name: 'トレーニング用品' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tools

end