class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
        @subcategories = Subcategory.all
end
