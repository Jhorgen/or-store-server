class Product < ApplicationRecord
scope :find_by_category, -> (category) { where("category ILIKE ?", "%#{category}%") if category.present? }
scope :find_by_brand, -> (brand) { where("brand ILIKE ?", "%#{brand}%") if brand.present? }
scope :find_by_title, -> (title) { where("replace(title, ' ', '') = replace(?, ' ', '')", "#{title}") if title.present? }
scope :find_by_description, -> (description) { where("description ILIKE ?", "%#{description}%") if description.present? }
end
