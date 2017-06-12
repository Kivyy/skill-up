class Apprenticeship < ApplicationRecord

  belongs_to :post
  belongs_to :requestor, class_name: 'User', foreign_key: :requestor_id
  # belongs_to :recipient, class_name: 'User', foreign_key: :recipient_id
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :requestor_id
end
