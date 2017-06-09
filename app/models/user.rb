class User < ApplicationRecord
  validates :first_name, :last_name, :age, :presence => true
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :skills
  has_many :subcategories, :through => :skills
    has_many :started_chats, foreign_key: "user1_id", class_name: "Connection"
  has_many :joined_chats, foreign_key: "user2_id", class_name: "Connection"

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
