class Calendar < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :team 

  with_options presence: true do
    validates :date
    validates :place
    validates :prefecture_id
    validates :cost
    validates :recruitment
    validates :deadline
  end

  def start_time
    self.date
  end



end
