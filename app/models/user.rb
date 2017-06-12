class User < ApplicationRecord
  validates :first_name, :last_name, :presence => true
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :skills
  has_many :subcategories, :through => :skills
  has_many :user_matches
  has_secure_password

  has_many :sender_apprenticeships, :foreign_key => :sender_id, class_name: "Apprenticeship"
  has_many :recipient_apprenticeships, :foreign_key => :recipient_id, class_name: "Apprenticeship"

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
