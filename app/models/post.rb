class Post < ApplicationRecord
  validates :description, :presence => true

  has_many :apprenticeship
  belongs_to :skill
  belongs_to :creator, class_name: "User"
end
