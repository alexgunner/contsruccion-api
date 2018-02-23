class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.float :product_price
      t.string :product_color
      t.references :provider, foreign_key: true
      t.references :manufacturer, foreign_key: true
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
