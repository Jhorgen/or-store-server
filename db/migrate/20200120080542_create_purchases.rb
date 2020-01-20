class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.float :amount
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :address2
      t.string :brand1
      t.string :title1
      t.integer :quantity1
      t.string :selectedoption1
      t.float :price1
      t.string :brand2
      t.string :title2
      t.integer :quantity2
      t.string :selectedoption2
      t.float :price2
      t.string :brand3
      t.string :title3
      t.integer :quantity3
      t.string :selectedoption3
      t.float :price3
      t.string :brand4
      t.string :title4
      t.integer :quantity4
      t.string :selectedoption4
      t.float :price4
      t.string :brand5
      t.string :title5
      t.integer :quantity5
      t.string :selectedoption5
      t.float :price5
      t.string :brand6
      t.string :title6
      t.integer :quantity6
      t.string :selectedoption6
      t.float :price6
      t.string :brand7
      t.string :title7
      t.integer :quantity7
      t.string :selectedoption7
      t.float :price7
      t.string :brand8
      t.string :title8
      t.integer :quantity8
      t.string :selectedoption8
      t.float :price8
      t.string :brand9
      t.string :title9
      t.integer :quantity9
      t.string :selectedoption9
      t.float :price9
      t.string :brand10
      t.string :title10
      t.integer :quantity10
      t.string :selectedoption10
      t.float :price10
      t.string :brand11
      t.string :title11
      t.integer :quantity11
      t.string :selectedoption11
      t.float :price11
      t.string :brand12
      t.string :title12
      t.integer :quantity12
      t.string :selectedoption12
      t.float :price12
      t.string :brand13
      t.string :title13
      t.integer :quantity13
      t.string :selectedoption13
      t.float :price13
      t.string :brand14
      t.string :title14
      t.integer :quantity14
      t.string :selectedoption14
      t.float :price14
      t.string :brand15
      t.string :title15
      t.integer :quantity15
      t.string :selectedoption15
      t.float :price15
      t.string :brand16
      t.string :title16
      t.integer :quantity16
      t.string :selectedoption16
      t.float :price16
      t.string :brand17
      t.string :title17
      t.integer :quantity17
      t.string :selectedoption17
      t.float :price17
      t.string :brand18
      t.string :title18
      t.integer :quantity18
      t.string :selectedoption18
      t.float :price18

      t.timestamps
    end
  end
end
