class User < ApplicationRecord
  validates :first_name, :last_name, :birthdate, :presence => true
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :skills
  has_many :subcategories, :through => :skills

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
