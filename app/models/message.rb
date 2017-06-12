class Message < ApplicationRecord
  belongs_to :apprenticeship

  validates_presence_of :body, :apprenticeship_id
  belongs_to :user

  # def message_time
  # created_at.strftime(“%m/%d/%y at %l:%M %p”)
  # end
end
