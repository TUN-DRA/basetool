class Maker < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'IP Select' },
    { id: 3, name: 'アシックス' },
    { id: 4, name: 'UPSET' },
    { id: 5, name: 'アディダス' },
    { id: 6, name: 'ATOMS' },
    { id: 7, name: 'UNDER ARMOUR' },
    { id: 8, name: 'エスエスケイ' },
    { id: 9, name: 'Old Hickory' },
    { id: 10, name: 'KUBOTA-SLUGGER' },
    { id: 11, name: 'Xanax' },
    { id: 12, name: 'SUREPLAY' },
    { id: 13, name: 'JB' },
    { id: 14, name: 'ZINGER' },
    { id: 15, name: 'ZETT' },
    { id: 16, name: 'TAMAZAWA' },
    { id: 17, name: 'Chandler Bats' },
    { id: 18, name: 'デサント' },
    { id: 19, name: 'NIKE' },
    { id: 20, name: 'ハイゴールド' },
    { id: 21, name: 'ハタケヤマ' },
    { id: 22, name: 'Victus' },
    { id: 23, name: 'FoseKift' },
    { id: 24, name: 'BLUEEQ' },
    { id: 25, name: 'BRETT' },
    { id: 26, name: 'Marucci' },
    { id: 27, name: 'ミズノ' },
    { id: 28, name: '美津和タイガー' },
    { id: 29, name: 'ヤナセバット' },
    { id: 30, name: 'LOUISVILLE SLUGGER' },
    { id: 31, name: 'Rawlings' },
    { id: 32, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tools

end