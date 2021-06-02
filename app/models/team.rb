class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  belongs_to_active_hash :level


  validates :teamname, presence: true
  validates :level_id, numericality: { other_than: 0 }
end
