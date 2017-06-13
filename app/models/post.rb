class Post < ApplicationRecord
  validates :description, :presence => true

  has_many :apprenticeships
  belongs_to :skill
  belongs_to :creator, class_name: "User"

  include PgSearch
  pg_search_scope :search, :against => :description

  def self.description_search(query)
    if query.present?
      search(query)
    # else
    #   scoped
    end
  end
end
