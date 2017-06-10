class Skill < ApplicationRecord
  validates :title, :user_id, :presence => true
  validates :subcategory_id, :presence => true, :uniqueness => { :scope => :user_id , message: "You already have this skill listed!"}

  belongs_to :subcategory
  belongs_to :user

  def self.search(search)
    where("LOWER(description) LIKE ? OR LOWER(title) LIKE ?","%#{search}%", "%#{search}%")
  end
end
