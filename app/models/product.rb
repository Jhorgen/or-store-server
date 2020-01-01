class Product < ApplicationRecord
scope :find_by_category, -> (category) { where("category ILIKE ?", "%#{category}%") if category.present? }
end
