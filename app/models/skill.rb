class Skill < ApplicationRecord
  validates :title, :presence => true
  validates :category, :presence => true


  has_many :posts
end
