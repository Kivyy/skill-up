class User < ApplicationRecord
  validates :first_name, :last_name, :presence => true
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :posts, :foreign_key => :creator_id
  has_many :apprenticeships, :foreign_key => :requestor_id
  has_many :skills, through: :posts
  
  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
