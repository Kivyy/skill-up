class Skill < ApplicationRecord
  belongs_to :subcategory
  belongs_to :user
end
