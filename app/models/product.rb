class Product < ApplicationRecord
scope :find_by_category, -> (category) { where("category ILIKE ?", "%#{category}%") if category.present? }
scope :find_by_brand, -> (brand) { where("brand ILIKE ?", "%#{brand}%") if brand.present? }
scope :find_by_title, -> (title) { where("title ILIKE ?", "#{title}") if title.present? }
end
