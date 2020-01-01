json.extract! product, :id, :category, :brand, :description, :color1, :color2, :color3, :color4, :color5, :size1, :size2, :size3, :size4, :size5, :quantity, :price, :saleprice, :image1, :image2, :image3, :image4, :image5, :review, :rating, :created_at, :updated_at
json.url product_url(product, format: :json)
