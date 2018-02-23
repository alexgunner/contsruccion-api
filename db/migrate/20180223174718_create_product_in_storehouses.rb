class CreateProductInStorehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :product_in_storehouses do |t|
      t.float :quantity
      t.references :product, foreign_key: true
      t.references :storehouse, foreign_key: true

      t.timestamps
    end
  end
end
