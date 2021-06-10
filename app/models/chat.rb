class Chat < ApplicationRecord
  belongs_to :team
  belongs_to :calendar

  validates :message, presence: true
end
