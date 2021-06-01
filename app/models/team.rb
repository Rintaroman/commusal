class Team < ApplicationRecord
  belongs_to :user, optional: true
  
end
