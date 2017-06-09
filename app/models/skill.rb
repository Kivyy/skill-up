class Skill < ApplicationRecord
  validates :title, :user_id, :presence => true
  validates :subcategory_id, :presence => true, :uniqueness => { :scope => :user_id , message: "You already have this skill listed!"}
  validates :teach, :presence => true

  belongs_to :subcategory
  belongs_to :user
end
