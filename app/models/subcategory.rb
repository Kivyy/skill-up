class Subcategory < ApplicationRecord
  validates :title, :category_id, :presence => true

  has_many :skills
  has_many :users, :through => :skills
  
  belongs_to :category
end
