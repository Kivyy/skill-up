class Message < ApplicationRecord

  validates :content, presence: true

  belongs_to :connection
  belongs_to :user

end
