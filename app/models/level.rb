class Level < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '未経験クラス' },
    { id: 2, name: '初級クラス' },
    { id: 3, name: '中級クラス' },
    { id: 4, name: '上級クラス'}
  ]

  include ActiveHash::Associations
  has_many :teams
end