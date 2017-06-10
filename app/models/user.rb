class User < ApplicationRecord
  validates :first_name, :last_name, :birthdate, :presence => true
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :skills
  has_many :subcategories, :through => :skills
  has_many :started_chats, foreign_key: "user_1_id", class_name: "UserMatch"
  has_many :joined_chats, foreign_key: "user_2_id", class_name: "UserMatch"

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @skill = current_user.skills.new
  end
end
