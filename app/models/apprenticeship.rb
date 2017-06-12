class Apprenticeship < ApplicationRecord

  belongs_to :requestor, class_name: 'User'
  belongs_to :post
  has_one :recipient, through: :post, source: :creator
  has_many :messages, dependent: :destroy

  # validates_uniqueness_of :sender_id, :scope => :recipient_id

end
