class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :brand
      t.text :description
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :color4
      t.string :color5
      t.string :size1
      t.string :size2
      t.string :size3
      t.string :size4
      t.string :size5
      t.integer :quantity
      t.float :price
      t.float :saleprice
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
