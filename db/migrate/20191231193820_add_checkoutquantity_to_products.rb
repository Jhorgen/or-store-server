class AddCheckoutquantityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :checkoutquantity, :integer
  end
end
