class Calendar < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :place
    validates :prefecture_id
    validates :cost
    validates :recruitment
    validates :deadline
  end
end
