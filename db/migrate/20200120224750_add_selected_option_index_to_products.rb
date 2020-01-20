class AddSelectedOptionIndexToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :selectedOptionIndex, :string
  end
end
