class Skill < ApplicationRecord
  validates :title, :presence => true, :uniqueness => { :scope => :user_id , message: "You already have this skill listed!"}
  validates :category, :presence => true
  belongs_to :post

  include PgSearch
  # multisearchable :against => [:description]
  pg_search_scope :search, against: [:description]

  def self.description_search(query)
    if query.present?
      search(query)
    else
      scope
    end
  end

  def self.search(search, subcategory)
    where("subLcategory_id = ? AND (LOWER(description) LIKE ? OR LOWER(title) LIKE ?)", subcategory.to_i, "%#{search.downcase}%", "%#{search.downcase}%")
  end
  def self.search(search, subcategory)
    where("subcategory_id = ? AND (LOWER(description) LIKE ? OR LOWER(title) LIKE ?)", subcategory.to_i, "%#{search.downcase}%", "%#{search.downcase}%")
  end

end
