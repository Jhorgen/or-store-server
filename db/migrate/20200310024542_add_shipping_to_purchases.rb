class AddShippingToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :shipping, :float
  end
end
