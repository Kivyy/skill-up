class Message < ApplicationRecord
  belongs_to :apprenticeship
  has_one :sender, through: :apprenticeship, source: :sender
  has_one :recipient, through: :apprenticeship, source: :recipient

  validates_presence_of :body, :apprenticeship_id


  # def message_time
  # created_at.strftime(“%m/%d/%y at %l:%M %p”)
  # end
end
