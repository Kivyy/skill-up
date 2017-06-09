class Description < ApplicationRecord
  validates :body, :skill_id, :presence => true
  
  belongs_to :skill
end
