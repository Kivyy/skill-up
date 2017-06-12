class Post < ApplicationRecord
  validates :description, :presence => true
  validates :teach
  
  has_many :skills
  belongs_to :apprenticeship
  belongs_to :creator, class_name: "User"
end
